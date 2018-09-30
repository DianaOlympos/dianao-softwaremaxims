defmodule SoftwaremaximsWeb.BlogTest do
  use ExUnit.Case, async: true

  test "list provide a list" do
    assert is_list(Softwaremaxims.Blog.list())
  end
end
