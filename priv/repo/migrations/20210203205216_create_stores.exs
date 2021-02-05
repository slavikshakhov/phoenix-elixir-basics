defmodule Proj.Repo.Migrations.CreateStores do
  use Ecto.Migration

  def change do
    create table(:stores) do
      add :name, :string
      add :description, :string
      add :open, :boolean, default: false, null: false

      timestamps()
    end

  end
end
