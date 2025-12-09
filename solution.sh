#!/bin/bash
set -e

python3 - << 'EOF'
import pandas as pd

df = pd.read_excel("/workspace/input/sample.xlsx")
df.to_csv("/workspace/output/result.csv", index=False)
EOF
