# PingPong

Para correr el código, primero de levantar las [3 VMs necesarias](https://github.com/arquitecturas-concurrentes/iasc-distribution-elixir#levantando-múltiples-vms-1), luego podemos probar que efectivamente funciona corriendo el siguiente código desde cualquiera de las VMs:

```
iex(me@computer-name)2> PingPong.ping
:pong
```

para más información visitar [elixir - Distributed tasks and configuration](http://elixir-lang.org/getting-started/mix-otp/distributed-tasks-and-configuration.html).

Nota: En los archivos de configuracion se va a describir donde estaran los distintos nodos que se describen de la siguiente manera <nombre de nodo>@<host>, donde el nombre del nodo en este ejemplo es el nodo a, b o c, y el host es nuestra maquina, identificado en linux con el nombre del equipo que tenemos. Podemos ver esto haciendo 

```
cat /etc/hostname
```

En windows se puede ver nuestro hostname por medio del comando del ipconfig

```
ipconfig /all
```
