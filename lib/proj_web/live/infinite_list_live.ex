defmodule ProjWeb.InfiniteListLive do
    use ProjWeb, :live_view
    alias Proj.Offices
    def mount(_params, _session, socket) do
        socket = socket 
            |> assign(page: 1, per_page: 3) 
            |> load_offices()
        
        {:ok, socket, temporary_assigns: [offices: []]}
    end
    defp load_offices(socket) do
        assign(socket, offices: Offices.list_offices(pagination: %{page: socket.assigns.page, per_page: socket.assigns.per_page}))
    end
    def handle_event("toggle", %{"id" => id}, socket) do
        office = Offices.get_office!(id)
        {:ok, _el} = Offices.update_office(office, %{status: !office.status})

        {:noreply, assign(socket, offices: Offices.list_offices())}
    end
    def handle_event("load_more", _value, socket) do
        socket = 
            socket
                |> update(:page, &(&1 + 1))
                |> load_offices()
        {:noreply, socket}
    end
end