# Blitzy


## Installation
```bash
mix deps.get
mix compile
```

## Run
```elixir
iex --name b@127.0.0.1 -S mix
iex --name c@127.0.0.1 -S mix
iex --name d@127.0.0.1 -S mix
./blitzy -n 10000 http://www.bieberfever.com
```

