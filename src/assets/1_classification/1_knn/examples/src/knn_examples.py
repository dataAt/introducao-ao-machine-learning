#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd
from sklearn.neighbors import KNeighborsClassifier

df = pd.DataFrame({
    'pointx': [
         1, 1, 2, 2.5, 3
     ],
    'pointy': [
         2, 3, 1, 2.5, 2
     ],
    'class': [
         'Blue', 'Blue', 'Orange', 'Purple', 'Orange'
     ]
})

neigh = KNeighborsClassifier(n_neighbors = 3)
neigh.fit(df[['pointx', 'pointy']], df['class'])

neigh.predict(df[['pointx', 'pointy']])
neigh.predict([[2., 2.]])

neigh.predict([[1.5, 2.5]])
