defmodule Raven.AppTest do
  use Raven.DataCase

  alias Raven.App
  alias Raven.Post

  @img "test/support/pixel.png"

  def build_upload(path) do
    %{__struct__: Plug.Upload, path: path, filename: Path.basename(path)}
  end

  test "datetime ok" do
    upload = build_upload(@img)
    attrs = %{
      alt: "Some alt",
      src: upload,
    }

    assert {:ok, image} = App.create_image(attrs)
    assert App.list_images() == [image]
    IO.inspect(image.src.updated_at)
  end

  test "datetime not parsed" do
    upload = build_upload(@img)
    attrs = %{
      title: "Some title",
      media: [%{
        alt: "Some alt",
        src: upload
      },
      %{
        alt: "Some alt",
        src: upload
      }
      ]
    }
    assert {:ok, post} = App.create_post(attrs)
    App.list_posts |> IO.inspect()
    assert App.list_posts() == [post]
  end
end
