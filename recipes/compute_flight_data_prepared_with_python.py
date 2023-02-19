# -*- coding: utf-8 -*-
import dataiku
import pandas as pd, numpy as np
from dataiku import pandasutils as pdu

# Read recipe inputs
flight_data_copy1 = dataiku.Dataset("flight_data_copy1")
flight_data_copy1_df = flight_data_copy1.get_dataframe()


# Compute recipe outputs from inputs
# TODO: Replace this part by your actual code that computes the output, as a Pandas dataframe
# NB: DSS also supports other kinds of APIs for reading and writing data. Please see doc.

flight_data_prepared_with_python_df = flight_data_copy1_df.dropna(subset=["ArrDelay"]) # For this sample code, simply copy input to output


# Write recipe outputs
flight_data_prepared_with_python = dataiku.Dataset("flight_data_prepared_with_python")
flight_data_prepared_with_python.write_with_schema(flight_data_prepared_with_python_df)
