defmodule SoftwaremaximsWeb.BlogController do
  use SoftwaremaximsWeb, :controller

  def show(conn, %{"slug" => slug}) do
    blog_post = Softwaremaxims.Blog.get_post(slug)
    render(conn, "show.html", blog_post: blog_post, add_blog_style: true)
  end

  def unpublished_show(conn, %{"slug" => slug}) do
    blog_post = Softwaremaxims.Blog.get_unpublished_post(slug)
    render(conn, "show.html", blog_post: blog_post, add_blog_style: true)
  end
end
