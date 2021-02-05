defmodule ProjWeb.OfficesLive do
    use ProjWeb, :live_view
    alias Proj.Offices
    def mount(_params, _session, socket) do
        {:ok, assign(socket, offices: Offices.list_offices(), code: "", matched: [], prices: [])}
    end
   
    def handle_event("show-matched-codes", %{"code" => prefix}, socket) do 
        {:noreply, assign(socket, matched: Offices.get_matched_codes(prefix))}
    end
    def handle_event("filter-by-code", %{"code" => code}, socket) do    
        {:noreply, assign(socket, offices: Offices.get_matches(code))}
    end
    def handle_event("filter-by-price", %{"prices" => prices}, socket) do
        offices = Offices.get_matches_by_prices(prices)
        socket = assign(socket, prices: prices, offices: offices)
        {:noreply, socket}
    end
end