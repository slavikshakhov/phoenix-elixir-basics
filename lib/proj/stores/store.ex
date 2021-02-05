defmodule Proj.Stores.Store do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stores" do
    field :description, :string
    field :name, :string
    field :rating, :integer
    field :open, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(store, attrs) do
    store
    |> cast(attrs, [:name, :description, :open, :rating])
    |> validate_required([:name, :description, :open])
  end
end
