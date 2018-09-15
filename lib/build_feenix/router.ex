defmodule BuildFeenix.Router do
  use Plug.Builder

  plug Plug.Parsers, parsers: [:json],
    pass: ["text/*"],
    json_decoder: Poison

  plug(:fetch_query_params)
  plug(:match)

  defp match(conn, _opts) do
    #IO.inspect conn
    do_match(conn, conn.method, conn.path_info)
  end

  defp do_match(conn, "GET", ["hello"]) do
    BuildFeenix.Controller.show(conn, conn.params)
  end

  defp do_match(conn, "POST", ["create"]) do
    BuildFeenix.Controller.create(conn, conn.body_params)
  end

  defp do_match(conn, _method, _path) do
    send_resp(conn, 400, "Invalid path")
  end
end
