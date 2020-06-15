defmodule RavenWeb.Router do
  use RavenWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RavenWeb do
    pipe_through :api
  end
end
