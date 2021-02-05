defmodule ProjWeb.GroupActivityLive do
    use ProjWeb, :live_view
    import Number.Currency
    def mount(_params, _session, socket) do
        {:ok, assign(socket, num_of_people: 0, total_price: 0)}
    end
    def handle_event("calc-price", %{"num_of_people" => num_of_people}, socket) do        
        num_of_people = num_of_people |> String.to_integer() 
        {:noreply, assign(socket, num_of_people: num_of_people, total_price: num_of_people * 10)}
    end
   
end