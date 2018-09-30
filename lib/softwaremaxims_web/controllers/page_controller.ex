defmodule SoftwaremaximsWeb.PageController do
  use SoftwaremaximsWeb, :controller

  def index(conn, _params) do
    post_list = Softwaremaxims.Blog.list()
    render conn, "index.html", post_list: post_list
  end
end
