# BuildFeenix

- `mix new build_feenix --sup`

```elixir
def deps do
  [
    {:plug, "~> 1.6"},
    {:cowboy, "~> 2.4"},
    {:poison, "~> 4.0"}
  ]
end
```

- now run `YourApp.Endpoint` from Application module YourApp (in `your_app.ex`). Set this module as aplication which should be run in `mix.exs`.

## Router
- `plug(:fetch_query_params)` method from Plug.Conn which parse query params to conn object [https://hexdocs.pm/plug/Plug.Conn.html#fetch_query_params/2]
- `plug Plug.Parser ...` needed to parse params from request body (POST, PUT, .. methods) [https://hexdocs.pm/plug/Plug.Parsers.html#content]
- `Plug.Router.Utils.build_path_match` [https://github.com/elixir-plug/plug/blob/master/lib/plug/router/utils.ex#L61]

## Sources
https://devhints.io/phoenix-conn
