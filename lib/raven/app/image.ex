defmodule Raven.Image do
  use Ecto.Schema
  use Waffle.Ecto.Schema
  import Ecto.Changeset
  alias Raven.Uploaders.Media

  schema "images" do
    field :alt, :string
    field :src, Media.Type
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, ~w(alt)a)
    |> cast_attachments(attrs, ~w(src)a)
  end
end
