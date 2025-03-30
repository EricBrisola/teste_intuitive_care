import pandas as pd


def concatAndFormatTables(tables):
    try:
        df = pd.concat(tables)

        df.rename(columns={"OD": "Seg.Odontológica",
                           "AMB": "Seg.Ambulatorial"}, inplace=True)

        df = df.loc[:, ~df.columns.str.contains('^Unnamed')]

        return df

    except Exception as err:
        print(f"Erro ao concatenar ou formatar tabelas: {err}")
