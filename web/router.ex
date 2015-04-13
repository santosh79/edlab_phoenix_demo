defmodule ActualEdlabDemo.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ActualEdlabDemo do
    pipe_through :browser # Use the default browser stack

    resources "/users", UserController
    get "/", UserController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ActualEdlabDemo do
  #   pipe_through :api
  # end
end
