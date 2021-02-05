defmodule Proj.Repo.Migrations.OfficesAddPriceColumn do
  use Ecto.Migration

  def change do
    alter table("offices") do
      add :price, :string
    end
  end
end
