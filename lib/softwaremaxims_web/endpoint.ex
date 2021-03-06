defmodule SoftwaremaximsWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :softwaremaxims

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug Plug.Static,
    at: "/",
    from: :softwaremaxims,
    gzip: true,
    only: ~w(css fonts images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket, websocket: true
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Jason

  plug Plug.MethodOverride
  plug Plug.Head

  # The session will be stored in the cookie and signed,
  # this means its contents can be read but not tampered with.
  # Set :encryption_salt if you would also like to encrypt it.
  plug Plug.Session,
    store: :cookie,
    key: "_softwaremaxims_key",
    signing_salt: "Pu8J+Eae"

  plug SoftwaremaximsWeb.Router

  @doc """
  Callback invoked for dynamically configuring the endpoint.

  It receives the endpoint configuration and checks if
  configuration should be loaded from the system environment.
  """
  def init(_key, config) do
    if config[:load_from_system_env] do
      port = System.get_env("PORT") || raise "expected the PORT environment variable to be set"

      secret_key_base =
        System.get_env("SECRET_KEY_BASE") ||
          raise "expected the SECRET_KEY_BASE environment variable to be set"

      {:ok,
       Keyword.put(config, :http, port: elem(Integer.parse(port), 0))
       |> Keyword.put(:secret_key_base, secret_key_base)}
    else
      {:ok, config}
    end
  end
end
