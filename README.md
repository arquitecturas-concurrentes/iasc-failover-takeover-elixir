> Ejemplo de una aplicación OTP distribuida

La aplicación en un `PingPongServer`: un actor al cual le envía `ping`, y te responde `pong`


## Levantando una sóla VM

```bash
iex -S mix
```

## Levantando múltiples VMs


```bash
iex -sname foo -S mix
```

Luego se pueden utilizar las siguientes herramientas para hacer comunicación entre VMs:

* `Node.spawn`
* `:rpc.call`

## Levantando múltiples VMs

```bash
iex --sname ke -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/ke"
iex --sname me -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/me"
iex --sname roon -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/roon"
```

Probar matar una vm y ver que después el proceso renace en la siguiente de menor prioridad
