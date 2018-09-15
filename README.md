# BuildFeenix

- `mix new build_feenix --sup`

```elixir
def deps do
  [
    {:plug, "~> 1.6"},
    {:cowboy, "~> 2.4"}
  ]
end
```

- build Endpoint
- run Enpoint as supervisor from application.ex

## Router
- `plug(:fetch_query_params)` method from Plug.Conn which parse query params to conn object [https://hexdocs.pm/plug/Plug.Conn.html#fetch_query_params/2]
- `plug Plug.Parser ...` needed to parse params from request body (POST, PUT, .. methods) [https://hexdocs.pm/plug/Plug.Parsers.html#content]

## Sources
https://devhints.io/phoenix-conn
