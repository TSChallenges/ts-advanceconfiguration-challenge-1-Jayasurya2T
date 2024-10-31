#!/bin/bash

log_file="transaction_log.txt"

# Check if log file exists
if [ ! -f "$log_file" ]; then
  echo "No transaction log file found."
  exit 1
fi

echo "Suspicious Transactions:"
grep -E "withdraw: ₹(50000|[5-9][0-9]{4}|[0-9]{6,})" "$log_file"
