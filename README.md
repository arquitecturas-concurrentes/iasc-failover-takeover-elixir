
```bash
iex --sname ke -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/ke"
iex --sname me -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/me"
iex --sname roon -pa _build/dev/lib/ping_pong/ebin/ --app ping_pong --erl "-config config/roon"
```
