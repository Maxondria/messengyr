defmodule MessengyrWeb.PageController do
  use MessengyrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def login(conn, _params) do
    render(conn, "login.html")
  end

  def signup(conn, _params) do
    render(conn, "signup.html")
  end
end
