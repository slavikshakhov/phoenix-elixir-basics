defmodule Proj.Offices.Office do
  use Ecto.Schema
  import Ecto.Changeset

  schema "offices" do
    field :city, :string
    field :code, :string
    field :price, :string
    field :status, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(office, attrs) do
    office
    |> cast(attrs, [:code, :city, :status, :price])
    |> validate_required([:code, :city, :status, :price])
  end
end
