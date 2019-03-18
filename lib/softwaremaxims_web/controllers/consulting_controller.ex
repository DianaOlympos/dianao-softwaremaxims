defmodule SoftwaremaximsWeb.ConsultingController do
  use SoftwaremaximsWeb, :controller

  def index(conn, _params) do
    render(conn, "consulting.html", add_blog_style: true)
  end
end
