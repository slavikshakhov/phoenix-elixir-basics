defmodule Proj.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :description, :text
      add :active, :boolean, default: false, null: false

      timestamps()
    end

  end
end
