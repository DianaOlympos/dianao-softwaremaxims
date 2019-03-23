defmodule Softwaremaxims.Blog do
  alias Softwaremaxims.Blog.PostStorage
  alias Softwaremaxims.Blog.UnpublishedPostStorage

  def list() do
    PostStorage.get_all()
    |> Enum.map(fn {_slug, post} -> post end)
    |> Enum.reverse()
  end

  def get_post(slug) do
    {_slug, post} = PostStorage.get_by_slug(slug)
    post
  end

  def unpublished_get_post(slug) do
    {_slug, post} = UnpublishedPostStorage.get_by_slug(slug)
    post
  end
end
