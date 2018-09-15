defmodule BuildFeenix.Router do
  use Plug.Builder

  plug(:match)

  defp match(conn, _opts) do
    IO.inspect conn
    do_match(conn, conn.method, conn.path_info)
  end

  defp do_match(conn, "GET", ["zdenal"]) do
    send_resp(conn, 200, "Hey here is zdenal")
  end

  defp do_match(conn, "GET", ["zdenal", "bey"]) do
    send_resp(conn, 200, "Zdenal is saying bey bey")
  end
end
