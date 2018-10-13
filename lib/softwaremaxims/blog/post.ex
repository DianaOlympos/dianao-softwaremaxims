defmodule Softwaremaxims.Blog.Post do
  defstruct title: "",
            body: "",
            slug: "",
            image: "",
            intro: ""

  @type t :: %Softwaremaxims.Blog.Post{
          title: String.t(),
          body: String.t(),
          slug: String.t(),
          image: String.t(),
          intro: String.t()
        }

  def new(slug, post_meta, post_html) do
    %Softwaremaxims.Blog.Post{
      title: post_meta[:title],
      body: post_html,
      slug: slug,
      image: post_meta[:image],
      intro: post_meta[:intro]
    }
  end

  def post_index() do
    [
      %{
        title: "Stand in front of the computer screen chew foot pounce on unsuspecting person",
        intro:
          "Hack up furballs chase red laser dot jump five feet high and sideways when a shadow moves ask to be pet then attack owners hand",
        image: "/images/logo.jpg",
        file_name: "/blog/stand-in.md"
      },
      %{
        title:
          "Meeeeouw claw at curtains stretch and yawn nibble on tuna ignore human bite human hand have my breakfast spaghetti yarn",
        intro:
          "Knock dish off table head butt cant eat out of my own dish head nudges spit up on light gray carpet instead of adjacent linoleum hiss and stare at nothing then run suddenly away",
        image: "/images/logo.jpg",
        file_name: "/blog/meeeeouw-claw.md"
      }
    ]
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
end
