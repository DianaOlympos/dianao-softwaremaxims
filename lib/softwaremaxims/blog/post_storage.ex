defmodule Softwaremaxims.Blog.PostStorage do
  use GenServer

  # Client
  def start_link(default) do
    GenServer.start_link(__MODULE__, default)
  end

  # internal implementation
  def post_folder() do
    Application.app_dir(:softwaremaxims, ["priv", "blog"])
  end

  def create_posts(folder, table) do
    file_list =
      folder
      |> File.ls!()
      |> Enum.map(&Path.join(folder, &1))

    blog_posts_list = Enum.map(file_list, &generate_post/1)
    true = :ets.insert(table, blog_posts_list)
  end

  def generate_post(file_name) do
    file_content = File.read!(file_name)

    {:ok, post_html, _something} = Earmark.as_html(file_content)

    {
      Path.basename(file_name, ".md"),
      post_html
    }
  end

  def get_by_slug(slug) do
    :ets.lookup(:post_storage, slug)
    |> List.first()
  end

  def get_all() do
    :ets.match(:post_storage, :"$1")
    |> List.flatten()
  end

  # Callbacks
  @impl true
  def init(_default) do
    posts = :ets.new(:post_storage, [:named_table, read_concurrency: true])

    post_folder()
    |> create_posts(posts)

    {:ok, %{post_storage_table: posts}}
  end
end
