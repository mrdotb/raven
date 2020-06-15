defmodule Raven.Repo.Migrations.CreateImage do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :alt, :text
      add :src, :text
    end
  end
end
