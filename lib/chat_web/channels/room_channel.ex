defmodule ChatWeb.RoomChannel do
    use Phoenix.Channel
    alias ChatWeb.Presence
  
    def handle_in("new_msg", %{"body" => body}, socket) do
        broadcast!(socket, "new_msg", %{body: body})
        {:noreply, socket}
    end

    def join("room:lobby", %{"name" => name}, socket) do
      send(self(), :after_join)
      {:ok, assign(socket, :name, name)}
    end
  
    def handle_info(:after_join, socket) do
      {:ok, _} =
        Presence.track(socket, socket.assigns.name, %{
          online_at: inspect(System.system_time(:second))
        })
  
      push(socket, "presence_state", Presence.list(socket))
      {:noreply, socket}
    end


  end