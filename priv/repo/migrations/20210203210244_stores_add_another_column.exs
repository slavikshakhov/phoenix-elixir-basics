defmodule Proj.Repo.Migrations.StoresAddAnotherColumn do
  use Ecto.Migration

  def change do
    alter table(:stores) do
      add :rating, :integer
    end
  end
end
