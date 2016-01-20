defmodule PhoenixPushstream.Router do
  use PhoenixPushstream.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixPushstream do
    pipe_through :api

    post "/pub", EventController, :create
  end
end
