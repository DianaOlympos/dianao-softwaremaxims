defmodule SoftwaremaximsWeb.PageController do
  use SoftwaremaximsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
