# telegram-send

This component expects two env variables to set up telegram-send.

* **TOKEN** - API Token of the bot
* **CHAT_ID** - ID of the chat to send the msg

The container "as is" may be used as follows:

```sh
docker run -e TOKEN=12345:ABCDE -e CHAT_ID=56789 --pull always -it haumdaucherdatalab/kubeflow_send_telegram "Hallo"
```

The component can be initialized as follows:

```py
send_telegram_op = comp.load_component_from_url('https://raw.githubusercontent.com/haumdaucher-datalab/kubeflow-components/master/notify/send_telegram/component.yaml')
```

And may be used in the pipeline function as follows:

```py
@dsl.pipeline
def vaccination_pipeline():
    step = send_telegram_op(msg="First message.",
                              msg2=step_before.output)
    step.add_env_variable(V1EnvVar(name='TOKEN', value='12345:ABCDE'))
    step.add_env_variable(V1EnvVar(name='CHAT_ID', value='567890'))
```