defmodule ProjWeb.ClientsLive do 
    use ProjWeb, :live_view
    #use Phoenix.HTML
    #import ProjWeb.ErrorHelpers
    alias Proj.Clients
    alias Proj.Clients.Client


    def mount(_params, _session, socket) do
        {:ok, assign(socket, 
                        clients: Clients.list_clients(), 
                        changeset: Clients.change_client(%Client{})),
                    temporary_assigns: [clients: []]}
    end
    def handle_event("save", %{"client" => params}, socket) do 
        IO.inspect("-----------------------------------")
        IO.inspect(params)
        case Clients.create_client(params) do 
        {:noreply, client} -> 
            socket = update(socket, :clients, fn clients -> [client | clients] end)
            changeset = Client.change_client(%Client{})
            socket = assign(socket, changeset: changeset)       
            {:noreply, socket}
        {:error, %Ecto.Changeset{} = changeset} -> 
            socket = assign(socket, changeset: changeset)
            {:noreply, socket}
        end   
    end
    def handle_event("validate", %{"client" => params}, socket) do
        changeset = %Client{} |> Clients.change_client(params) |> Map.put(:action, :insert)
        {:noreply, assign(socket, changeset: changeset)}
    end
end