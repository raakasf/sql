#!/bin/bash

set -e  # Exit immediately if any command fails

# === Configuration ===
PDB_NAME="XEPDB1"
ORA_PASSWORD="oracle"
DUMPFILE="EXPORTED_SAMPLE_SCHEMAS.DMP"
DUMP_DIR="/opt/oracle/sample_schemas"
ORACLE_SID="localhost:1521/$PDB_NAME"
DIRECTORY_NAME="import_dir"
SCHEMAS=("hr" "sh" "oe" "pm" "ix")

echo "🔐 Connecting to SYS as SYSDBA and opening pluggable database..."
sqlplus -s /nolog <<EOF
CONNECT sys/$ORA_PASSWORD@$ORACLE_SID AS SYSDBA
ALTER PLUGGABLE DATABASE $PDB_NAME OPEN;
ALTER PLUGGABLE DATABASE $PDB_NAME SAVE STATE;
CREATE OR REPLACE DIRECTORY $DIRECTORY_NAME AS '$DUMP_DIR';
EXIT;
EOF

# === Schema Import ===
for SCHEMA in "${SCHEMAS[@]}"; do
  echo "📥 Importing schema: $SCHEMA ..."
  impdp system/$ORA_PASSWORD@$ORACLE_SID \
  schemas=$SCHEMA \
  directory=$DIRECTORY_NAME \
  dumpfile=$DUMPFILE \
  logfile=import_${SCHEMA}.log \
  remap_tablespace=EXAMPLE:USERS || {
    echo "⚠️ Import for $SCHEMA finished with warnings. See import_${SCHEMA}.log"
}

done

# === Unlock users ===
echo "🔓 Unlocking imported users..."
sqlplus -s /nolog <<EOF
CONNECT sys/$ORA_PASSWORD@$ORACLE_SID AS SYSDBA
ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;
ALTER USER sh IDENTIFIED BY sh ACCOUNT UNLOCK;
ALTER USER oe IDENTIFIED BY oe ACCOUNT UNLOCK;
ALTER USER pm IDENTIFIED BY pm ACCOUNT UNLOCK;
ALTER USER ix IDENTIFIED BY ix ACCOUNT UNLOCK;
EXIT;
EOF

echo "✅ All schemas imported and users unlocked!"

