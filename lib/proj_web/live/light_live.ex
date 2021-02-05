defmodule ProjWeb.LightLive do
    use ProjWeb, :live_view

    def mount(_params, _session, socket) do
        {:ok, assign(socket, light: 0)}
    end
    def handle_event("on", _value, socket) do
        {:noreply, assign(socket, light: 100)}
    end
    def handle_event("off", _value, socket) do
        {:noreply, assign(socket, light: 0)}
    end
    def handle_event("+10", _value, socket) do
        {:noreply, update(socket, :light, &(&1 + 10))}
    end
    def handle_event("-10", _value, socket) do        
        socket = 
            socket   
                |> update(:light, fn x ->  x - 10 end)
        {:noreply, socket}
    end
end