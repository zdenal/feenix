defmodule BuildFeenix.Endpoint do
  def start_link() do
    Plug.Adapters.Cowboy2.http(__MODULE__, [])
  end
  use Plug.Builder

  plug(:hello)
  plug(:world)

  def hello(conn, _opts) do
    put_private(conn, :name, "world")
  end
  def world(conn, _opts) do
    send_resp(conn, 200, "hello #{conn.private[:name]}")
  end
end
