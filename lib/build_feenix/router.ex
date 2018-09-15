defmodule BuildFeenix.Router do
  defmacro __using__(_opts) do
    quote do
      use Plug.Builder
      import BuildFeenix.Dsl.Router

      plug Plug.Parsers, parsers: [:json],
        pass: ["application/json"],
        json_decoder: Poison

      plug(:fetch_query_params)
      plug(:match)

      defp match(conn, _opts) do
        #IO.inspect conn
        do_match(conn, conn.method, conn.path_info)
      end
    end
  end
end
