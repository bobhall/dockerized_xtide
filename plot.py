import pandas as pd
import datetime
import matplotlib.pyplot as plt

df = pd.read_csv('out.csv', sep=' ', parse_dates=True, 
                 index_col=0,
                 date_parser=lambda dd: datetime.datetime.utcfromtimestamp(dd))

df.plot()
plt.show()
