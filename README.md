# Ejemplo de una aplicación OTP tolerante a fallos mediante multiples VMs usando Failover/Takeover

La aplicación define un [`PingPongServer`](https://github.com/arquitecturas-concurrentes/iasc-distribution-elixir/tree/master/ping_pong): un actor al cual si le envía el mensaje `ping` responde `pong`. 

Prestar atención a los siguientes elementos: 

* Aplicaciones
* Workers - GenServer en este caso
* Supervisores
* Alias locales y globales

## Levantando una sóla VM

```bash
iex -S mix
```

## Levantando múltiples VMs


```bash
iex --sname foo -S mix
```

Luego se pueden utilizar las siguientes herramientas para hacer comunicación entre VMs:

* `Node.spawn`
* `:rpc.call`

## Levantando múltiples VMs

```bash
iex --sname a -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/a"
iex --sname b -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/b"
iex --sname c -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/c"
```

Tener en cuenta que por lo definido en cada uno de los [archivos de configuración](https://github.com/arquitecturas-concurrentes/iasc-distribution-elixir/tree/master/ping_pong/config) y de la [documentacion de erlang](http://erlang.org/doc/design_principles/distributed_applications.html), la consola se va a quedar esperando hasta que las 3 VMs estén levantadas antes de empezar.

Probar matar una vm y ver que después el proceso renace en la siguiente de menor prioridad
