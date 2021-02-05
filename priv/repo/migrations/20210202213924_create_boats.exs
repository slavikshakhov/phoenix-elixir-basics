defmodule Proj.Repo.Migrations.CreateBoats do
  use Ecto.Migration

  def change do
    create table(:boats) do
      add :type, :string
      add :price, :string
      add :available, :boolean, default: false, null: false

      timestamps()
    end

  end
end
