# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :raven,
  ecto_repos: [Raven.Repo]

# Configures the endpoint
config :raven, RavenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i5U2eOtJCaQ8Mqy5va/PF5D6gxdcAfbNMCZqNfMDLDE/GeXt+UVvMD1JpSjVeKre",
  render_errors: [view: RavenWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Raven.PubSub,
  live_view: [signing_salt: "SESVx198"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :waffle,
  storage: Waffle.Storage.Local,
  # in order to have a different storage directory from url
  storage_dir_prefix: "priv/waffle/private"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
