defmodule ProjWeb.PaginationLive do
    use ProjWeb, :live_view
    alias Proj.Offices

    def handle_params(params, _url, socket) do
        page = (params["page"] || "1") |> String.to_integer()
        per_page = (params["per_page"] || "4") |> String.to_integer()
        pagination = %{page: page, per_page: per_page}
        {:noreply, assign(socket, options: pagination, offices: Offices.list_offices(pagination: pagination))}
    end

    def handle_event("set_per_page", %{"per_page" => per_page}, socket) do
        per_page = per_page |> String.to_integer()
        socket = push_patch(socket, to: Routes.live_path(socket, __MODULE__, page: socket.assigns.options.page, per_page: per_page))
        {:noreply, socket}
    end

    defp pagination_link(socket, text, page, per_page) do 
        live_patch text, to: Routes.live_path(socket, __MODULE__, page: page, per_page: per_page) 
    end
end

