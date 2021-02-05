defmodule Proj.Boats.Boat do
  use Ecto.Schema
  import Ecto.Changeset

  schema "boats" do
    field :available, :boolean, default: false
    field :price, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(boat, attrs) do
    boat
    |> cast(attrs, [:type, :price, :available])
    |> validate_required([:type, :price, :available])
  end
end
