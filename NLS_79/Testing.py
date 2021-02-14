import
pandas as pd
import numpy as np


def today_age(x):
    nls = 1979
    now = 2020
    x = x + (2020 - 1979)
    return x


df = pd.DataFrame({"age": [14, 15, 16, 18, 22, 21, 14, 17, 18, 17, 17]})
df["age_2020"] = df.apply(lambda x: today_age(x["age"]), axis=1)
df.head()