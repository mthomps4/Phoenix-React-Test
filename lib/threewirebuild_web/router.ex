defmodule ThreewirebuildWeb.Router do
  use ThreewirebuildWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end
  pipeline :browser do
      plug :accepts, ["html"]
      plug :fetch_session
      plug :fetch_flash
      plug :protect_from_forgery
      plug :put_secure_browser_headers
      # plug Plug.Static,
      #   at: "/",
      #   from: "priv/3wirebuild/build/",
      #   only: ~w(index.html favicon.ico static)
      # plug Plug.Static.IndexHtml,
      #   at: "/"
  end

  scope "/", ThreewirebuildWeb do
    pipe_through :browser # Use the default browser stack
  end

  scope "/api", ThreewirebuildWeb do
    pipe_through :api
  end
end
