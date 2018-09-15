defmodule BuildFeenix.Endpoint do
  defmacro __using__(_opts) do
    quote do
      use Plug.Builder

      plug(Plug.Logger)

      def start_link() do
        Plug.Adapters.Cowboy2.http(__MODULE__, [])
      end
    end
  end
end
