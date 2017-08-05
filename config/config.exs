# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :threewirebuild,
  ecto_repos: [Threewirebuild.Repo]

# Configures the endpoint
config :threewirebuild, ThreewirebuildWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KxiGJiCFuOXv1yAkjWuZxzC2olAP7xE7k1cXqGCrjHBmBC/Tf+VZxYyMC/N8QuTQ",
  render_errors: [view: ThreewirebuildWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Threewirebuild.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
