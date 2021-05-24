# telegram-send

This component expects two env variables to set up telegram-send.

* **TOKEN** - API Token of the bot
* **CHAT_ID** - ID of the chat to send the msg

To send a `Hello` this container may be used as follows:

```sh
docker run -e TOKEN=12345:ABCDE -e CHAT_ID=56789 --pull always -it haumdaucherdatalab/kubeflow_send_telegram "Hallo"
```

The component can be initialized as follows:

