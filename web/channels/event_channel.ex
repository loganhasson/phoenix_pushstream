defmodule PhoenixPushstream.EventChannel do
  use Phoenix.Channel

  def join("events:" <> id, _params, socket) do
    {:ok, socket}
  end
end
