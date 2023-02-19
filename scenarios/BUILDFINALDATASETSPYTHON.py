# This sample code helps you get started with the custom scenario API.
#For more details and samples, please see our Documentation
from dataiku.scenario import Scenario

# The Scenario object is the main handle from which you initiate steps
scenario = Scenario()

# A few example steps follow

# Compute metrics

scenario.compute_dataset_metrics("flight_data_copy_1")

#Run checks
scenario.run_dataset_checks("flight_data_copy_1")

# Building a dataset
scenario.build_dataset("flights_and_airports")
