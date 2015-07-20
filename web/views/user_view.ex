defmodule HelloPhoenix.UserView do
  use HelloPhoenix.Web, :view
  
  def render("user.json", %{user: user}) do
    %{id: user.id}
  end
end
