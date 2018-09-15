defmodule YourApp.Router do
  use BuildFeenix.Router

  get "/hello", YourApp.Controller, :show
  post "/create", YourApp.Controller, :create
end
