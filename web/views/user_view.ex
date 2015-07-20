defmodule HelloPhoenix.UserView do
  use HelloPhoenix.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id}
  end
end
