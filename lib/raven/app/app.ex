defmodule Raven.App do
  @moduledoc """
  The App context.
  """

  alias Raven.Repo
  alias Raven.Post
  alias Raven.Image

  def create_post(attrs \\ %{}) do
    %Post{}
    |> Post.changeset(attrs)
    |> Repo.insert()
  end

  def list_posts() do
    Repo.all(Post)
  end

  def create_image(attrs \\ %{}) do
    %Image{}
    |> Image.changeset(attrs)
    |> Repo.insert()
  end

  def list_images() do
    Repo.all(Image)
  end
end
