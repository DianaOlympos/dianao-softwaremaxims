defmodule Softwaremaxims.Blog do
  alias Softwaremaxims.Blog.PostStorage
  alias Softwaremaxims.Blog.Post

  def list() do
    PostStorage.get_all()
    |> Enum.map(fn {slug, body} -> Post.new(slug, body) end)
  end

  def get_post(slug) do
    {slug, body} = PostStorage.get_by_slug(slug)
    Post.new(slug, body)
  end
end
