defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def members(conn, _params) do
    IO.puts("Users functions hit")
    members = [
      %{id: 1, name: "Alice Johnson", age: 30, email: "alice@example.com"},
      %{id: 2, name: "Bob Craig", age: 31, email: "bob@example.com"},
      %{id: 3, name: "Charlie Puth", age: 32, email: "charlie@example.com"}
    ]
    render(conn, :members, members: members, layout: false)
  end

  # API

  def users(conn, _params) do
    IO.puts("Users functions hit")
    users = [
      %{id: 1, name: "Alice Johnson", age: 30, email: "alice@example.com"},
      %{id: 2, name: "Bob Craig", age: 31, email: "bob@example.com"},
      %{id: 3, name: "Charlie Puth", age: 32, email: "charlie@example.com"}
    ]

    json(conn, %{users: users})
  end
end
