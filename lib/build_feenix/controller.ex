defmodule BuildFeenix.Controller do
  use Plug.Builder

  def show(conn, %{"name" => name}) do
    send_resp(conn, 200, "Hello #{name}")
  end

  def create(conn, %{"name" => name}) do
    send_resp(conn, 201, "Created #{name}")
  end
end
