defmodule Raven.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    embeds_many :media, Raven.Media
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, ~w(title)a)
    |> cast_embed(:media, with: &Raven.Media.changeset/2)
  end
end
