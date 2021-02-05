defmodule Proj.Repo.Migrations.CreateOffices do
  use Ecto.Migration

  def change do
    create table(:offices) do
      add :code, :string
      add :city, :string
      add :status, :boolean, default: false, null: false

      timestamps()
    end

  end
end
