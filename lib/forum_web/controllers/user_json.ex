defmodule ForumWeb.UserJSON do
  alias Forum.Accounts.User
  alias Forum.Posts.Post

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      post: for(post <- user.posts, do: post_data(post))
    }
  end

  defp post_data(%Post{} = post) do
    %{
      id: post.id,
      title: post.title,
      body: post.body
    }
  end
end
