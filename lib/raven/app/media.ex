defmodule Raven.Media do
  use Ecto.Schema
  use Waffle.Ecto.Schema
  import Ecto.Changeset

  alias Raven.Uploaders.Media

  @primary_key false
  embedded_schema do
    field :src, Media.Type
    field :alt, :string
  end

  @doc false
  def changeset(media, attrs) do
    media
    |> cast(attrs, ~w(alt)a)
    |> cast_attachments(attrs, ~w(src)a)
  end
end
