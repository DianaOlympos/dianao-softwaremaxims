defmodule Softwaremaxims.Blog do
  def list() do
    [
      %{
        title: "an amazing title",
        body: "an even more amazing body",
        slug: "amazing-post"
      }
    ]
  end

  def get_post(slug) do
    post_list = list()
    Enum.find(post_list, fn x -> x[:slug] == slug end)
  end
end
