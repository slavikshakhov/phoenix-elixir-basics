defmodule Proj.Repo.Migrations.CreateClients do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add :name, :string
      add :phone, :string

      timestamps()
    end

  end
end
