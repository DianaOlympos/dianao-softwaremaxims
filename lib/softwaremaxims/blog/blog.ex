defmodule Softwaremaxims.Blog do
  alias Softwaremaxims.Blog.PostStorage

  def list() do
    PostStorage.get_all()
    |> Enum.map(fn {_slug, post} -> post end)
    |> Enum.reverse()
  end

  def get_post(slug) do
    {_slug, post} = PostStorage.get_by_slug(slug)
    post
  end
end
