defmodule ProjWeb.DashboardLive do
    use ProjWeb, :live_view
    import Number.Currency
    alias Proj.Dashboard

    def mount(_params, _session, socket) do
        if connected?(socket) do
            :timer.send_interval(2000, self(), :tick)
        end
        {:ok, assign(socket, orders: 0, sales: 0, satisfaction: 0)}
    end
    def handle_event("calc", _value, socket) do
        {:noreply, assign(socket, orders: Dashboard.orders(), sales: Dashboard.sales(), satisfaction: Dashboard.satisfaction())}
    end
    def handle_info(:tick, socket) do
         {:noreply, assign(socket, orders: Dashboard.orders(), sales: Dashboard.sales(), satisfaction: Dashboard.satisfaction())}
    end
end