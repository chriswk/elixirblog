defmodule Elixirblog.PageController do
  use Elixirblog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
