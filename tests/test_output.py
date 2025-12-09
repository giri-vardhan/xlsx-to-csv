import os
import pandas as pd

def test_csv_created():
    assert os.path.exists("/workspace/output/result.csv"), "CSV file was not created"

def test_csv_matches_xlsx():
    xlsx_path = "/workspace/input/sample.xlsx"
    csv_path = "/workspace/output/result.csv"

    df_xlsx = pd.read_excel(xlsx_path)
    df_csv = pd.read_csv(csv_path)

    assert df_xlsx.shape == df_csv.shape, "Row/column count mismatch"
    assert list(df_xlsx.columns) == list(df_csv.columns), "Column names mismatch"
