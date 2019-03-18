defmodule SoftwaremaximsWeb.Router do
  use SoftwaremaximsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SoftwaremaximsWeb do
    # Use the default browser stack
    pipe_through :browser

    get "/", PageController, :index
    get "/blog/:slug", BlogController, :show
    get "/about", AboutController, :index
    get "/consulting", ConsultingController, :index
    get "/resume", ResumeController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SoftwaremaximsWeb do
  #   pipe_through :api
  # end
end
