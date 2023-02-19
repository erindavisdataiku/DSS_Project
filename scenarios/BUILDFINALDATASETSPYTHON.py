# This sample code helps you get started with the custom scenario API.
#For more details and samples, please see our Documentation
from dataiku.scenario import Scenario

# The Scenario object is the main handle from which you initiate steps
scenario = Scenario()

# A few example steps follow

# Compute metrics

scenario.compute_dataset_metrics("NAME_OF_DATASET_WITH_METRICS_AND_CHECKS")

#Run checks
scenario.run_dataset_checks("NAME_OF_DATASET_WITH_METRICS_AND_CHECKS")

# Building a dataset
scenario.build_dataset("NAME_OF_FINAL_OUTPUT_DATASET")
