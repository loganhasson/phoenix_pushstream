defmodule PhoenixPushstream.EventController do
  use PhoenixPushstream.Web, :controller

  def create(conn, params) do
    Task.async(fn ->
      id   = params["id"]
      type = params["type"]

      event_params = params
                     |> Map.delete("id")
                     |> Map.delete("type")

      PhoenixPushstream.Endpoint.broadcast("events:#{id}", type, event_params)
    end)

    conn
    |> json(%{message: "success"})
  end
end
