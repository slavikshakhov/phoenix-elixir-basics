defmodule ProjWeb.BoatsLive do
    use ProjWeb, :live_view
    alias Proj.Boats
   

    def mount(_params, _session, socket) do
        {:ok, assign(socket, boats: Boats.list_boats(), prices: [], type: ""), temporary_assigns: [boats: []]}
    end
    def handle_event("filter", %{"type" => type, "prices" => prices}, socket) do
        {:noreply, assign(socket, type: type, prices: prices, boats: Boats.list_boats(type: type, prices: prices))}
    end

    def checkbox_render(assigns) do
        ~L"""
        <input hidden id="<%= @price %>" type="checkbox" name="prices[]" value="<%= @price %>"
                <%= if @checked, do: "checked" %>                
                 />
        <label for="<%= @price %>" class="centering-box w-8 h-8 bg-red-400 rounded-md
                <%= if @checked, do: "bg-red-600" %>"><%= @price %></label>
        """
    end

    

    def select_options do
        [
            "All Types": "", 
            "Fishing": "fishing",
            "Sailing": "sailing",
            "Sport": "sport"
        ]
    end
end