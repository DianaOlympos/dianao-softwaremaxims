defmodule SoftwaremaximsWeb.PageControllerTest do
  use SoftwaremaximsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Software Maxims"
  end
end
