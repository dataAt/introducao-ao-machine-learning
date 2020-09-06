#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import pandas as pd
import sklearn.neighbors

pointx = [
    0.8, 1., 0.8, 2., 2.2, 2., 1.3, 2.2, 3., 3.8, 4., 4., 3., 3.2, 4., 4.
]

pointy = [
    1.1, 2., 2.6, 1., 1.6, 3, 3.6, 4.3, 4., 3.3, 4., 3., 2., 0.6, 2., 1.
]

classes = [
 'Orange', 'Orange', 'Orange', 'Orange', 'Green', 'Green', 'Green', 
 'Green', 'Purple', 'Green', 'Blue', 'Blue', 'Orange', 'Blue', 'Blue', 'Blue'
][::-1]

df = pd.DataFrame({
    'pointx': pointx,
    'pointy': pointy,
    'classes': classes    
})

df.to_csv('knnpoints.csv')

# sklearn.neighbors.KNeighborsClassifier
