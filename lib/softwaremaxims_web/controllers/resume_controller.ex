defmodule SoftwaremaximsWeb.ResumeController do
  use SoftwaremaximsWeb, :controller

  def index(conn, _params) do
    redirect(conn, external: "https://dianaolympos.github.io/")
  end
end
