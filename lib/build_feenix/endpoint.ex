defmodule BuildFeenix.Endpoint do
  use Plug.Builder

  plug(Plug.Logger)
  plug(BuildFeenix.Router)

  def start_link() do
    Plug.Adapters.Cowboy2.http(__MODULE__, [])
  end
end
