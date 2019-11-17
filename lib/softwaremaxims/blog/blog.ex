defmodule Softwaremaxims.Blog do
  alias Softwaremaxims.Blog.PostStorage
  alias Softwaremaxims.Blog.UnpublishedPostStorage

  def list() do
    PostStorage.get_all()
    |> Enum.map(fn {_slug, post} -> post end)
    |> Enum.sort(fn %{order: order_1}, %{order: order_2} -> order_1 >= order_2 end)
  end

  def get_post(slug) do
    {_slug, post} = PostStorage.get_by_slug(slug)
    post
  end

  def get_unpublished_post(slug) do
    {_slug, post} = UnpublishedPostStorage.get_by_slug(slug)
    post
  end
end
