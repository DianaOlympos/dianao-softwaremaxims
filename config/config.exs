# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
import Config

# Configures the endpoint
config :softwaremaxims, SoftwaremaximsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LB7VGeGLWxjZCsrzZz/9lp1qTw2Gh4uUksNAWjdBRApILdWaSD8Hdzxn12/POqCv",
  render_errors: [view: SoftwaremaximsWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: Softwaremaxims.PubSub

config :phoenix, :json_library, Jason
config :phoenix, :format_encoders, json: Jason

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
