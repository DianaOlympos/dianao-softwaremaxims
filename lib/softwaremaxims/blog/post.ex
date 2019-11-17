defmodule Softwaremaxims.Blog.Post do
  defstruct title: "",
            body: "",
            slug: "",
            image: "",
            intro: "",
            order: 1

  @type t :: %Softwaremaxims.Blog.Post{
          title: String.t(),
          body: String.t(),
          slug: String.t(),
          image: String.t(),
          intro: String.t(),
          order: integer()
        }

  def new(slug, post_meta, post_html) do
    %Softwaremaxims.Blog.Post{
      title: post_meta[:title],
      body: post_html,
      slug: slug,
      image: post_meta[:image],
      intro: post_meta[:intro],
      order: post_meta[:order]
    }
  end

  def post_index() do
    Application.app_dir(:softwaremaxims, ["priv"])
    |> Path.join("blog_posts.toml")
    |> Toml.decode_file!(keys: :atoms!)
    |> Map.get(:blog_post)
  end

  def generate_post(%{full_path: file_path} = meta) do
    file_content = File.read!(file_path)

    {:ok, post_html, _something} = Earmark.as_html(file_content)
    slug = Path.basename(file_path, ".md")

    {
      slug,
      new(slug, meta, post_html)
    }
  end

  def unpublished_post_index() do
    Application.app_dir(:softwaremaxims, ["priv"])
    |> Path.join("blog_posts.toml")
    |> Toml.decode_file!(keys: :atoms!)
    |> Map.get(:unpublished_blog_post)
  end
end
