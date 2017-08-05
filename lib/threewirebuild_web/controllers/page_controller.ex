defmodule ThreewirebuildWeb.PageController do
  use ThreewirebuildWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
