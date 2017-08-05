defmodule ThreewirebuildWeb.Router do
  use ThreewirebuildWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ThreewirebuildWeb do
    pipe_through :api
  end
end
