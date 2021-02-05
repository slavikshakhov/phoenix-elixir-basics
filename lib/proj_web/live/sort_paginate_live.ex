defmodule ProjWeb.SortPaginateLive do
    use ProjWeb, :live_view
    alias Proj.Stores

    def handle_params(params, _url, socket) do 
        IO.inspect("------------------------")
        if params["sort_by"] do
            IO.inspect(params["sort_by"])
        end
       
        sort_by = (params["sort_by"] || "id") |> String.to_atom()
        sort_order = (params["sort_order"] || "asc") |> String.to_atom()
        page = (params["page"] || "1") |> String.to_integer()
        per_page = (params["per_page"] || "4") |> String.to_integer()
        sort_options = %{sort_by: sort_by, sort_order: sort_order}
        pagination_options = %{page: page, per_page: per_page}
        stores = Stores.list_stores(sort: sort_options, pagination: pagination_options)
        socket = assign(socket,options: Map.merge(sort_options, pagination_options), stores: stores)
        {:noreply, socket}
    end

    def handle_event("set_per_page", %{"per_page" => per_page}, socket) do
        per_page = per_page |> String.to_integer()
        socket = push_patch(socket, to: Routes.live_path(
            socket,
            __MODULE__, 
            page: socket.assigns.options.page, 
            per_page: per_page, 
            sort_by: socket.assigns.options.sort_by,
            sort_order: socket.assigns.options.sort_order
            ))
        {:noreply, socket}
    end

    defp toggle_order(:asc), do: :desc
    defp toggle_order(:desc), do: :asc

    defp pagination_link(socket, text, page, options) do 
        live_patch text, to: Routes.live_path(
            socket, __MODULE__, page: page, per_page: options.per_page, sort_by: options.sort_by, sort_order: options.sort_order) 
    end
end 