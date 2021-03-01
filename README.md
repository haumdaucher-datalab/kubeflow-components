# kubeflow-components - Haumdaucher-Datalab

Kubeflow components of the Haumdaucher-Datalab.

Current state:
* Created Docker image for csv-to-influixdb.
* Created component with function.

Note: Nothing is working currently :).
## create component

```sh
python -m pip install -r requirements.txt
curl -o csvtoinfluxdb.py https://raw.githubusercontent.com/fabio-miranda/csv-to-influxdb/master/csv-to-influxdb.py
python ./create_component.py
```