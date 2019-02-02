defmodule SoftwaremaximsWeb.AboutController do
  use SoftwaremaximsWeb, :controller

  def index(conn, _params) do
    render(conn, "about.html", add_blog_style: true)
  end
end
