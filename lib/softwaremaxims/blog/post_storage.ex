defmodule Softwaremaxims.Blog.PostStorage do
  alias Softwaremaxims.Blog.Post

  use GenServer

  # Client
  def start_link(default) do
    GenServer.start_link(__MODULE__, default)
  end

  # internal implementation
  def post_folder() do
    Application.app_dir(:softwaremaxims, ["priv"])
  end

  def create_posts(folder, table) do
    file_list =
      Post.post_index()
      |> Enum.map(&Map.put(&1, :full_path, Path.join(folder, &1[:file_name])))

    blog_posts_list = Enum.map(file_list, &Post.generate_post/1)
    true = :ets.insert(table, blog_posts_list)
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
