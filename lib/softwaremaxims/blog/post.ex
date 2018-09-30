defmodule Softwaremaxims.Blog.Post do
  defstruct title: "",
            body: "",
            slug: ""

  @type t :: %Softwaremaxims.Blog.Post{
          title: String.t(),
          body: String.t(),
          slug: String.t()
        }

  def new(slug, body) do
    %Softwaremaxims.Blog.Post{
      title: slug,
      body: body,
      slug: slug
    }
  end
end
