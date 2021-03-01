import kfp
import kfp.components as comp
from csvtoinfluxdb import *
load_csv = comp.create_component_from_func(loadCsv,output_component_file="component.yaml")