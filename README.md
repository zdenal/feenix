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
