defmodule Raven.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :src, :text
      add :media, :map, default: %{}
    end
  end
end
