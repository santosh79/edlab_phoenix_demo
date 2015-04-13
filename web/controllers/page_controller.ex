defmodule ActualEdlabDemo.PageController do
  use ActualEdlabDemo.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
