defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def members(conn, params) do
    IO.puts("Users functions hit")
    page = String.to_integer(params["page"] || "1")
    members = [
      %{id: 1, name: "Alice Johnson", age: 30, email: "alice@example.com"},
      %{id: 2, name: "Bob Craig", age: 31, email: "bob@example.com"},
      %{id: 3, name: "Charlie Puth", age: 32, email: "charlie@example.com"},
      %{id: 4, name: "Diana Ross", age: 28, email: "diana@example.com"},
      %{id: 5, name: "Edward Norton", age: 35, email: "edward@example.com"},
      %{id: 6, name: "Fiona Apple", age: 29, email: "fiona@example.com"},
      %{id: 7, name: "George Michael", age: 33, email: "george@example.com"},
      %{id: 8, name: "Helen Hunt", age: 27, email: "helen@example.com"},
      %{id: 9, name: "Ian McKellen", age: 34, email: "ian@example.com"},
      %{id: 10, name: "Julia Roberts", age: 31, email: "julia@example.com"},
      %{id: 11, name: "Kevin Bacon", age: 36, email: "kevin@example.com"},
      %{id: 12, name: "Laura Palmer", age: 25, email: "laura@example.com"},
      %{id: 13, name: "Michael Jordan", age: 38, email: "michael@example.com"},
      %{id: 14, name: "Nancy Wheeler", age: 26, email: "nancy@example.com"},
      %{id: 15, name: "Oscar Isaac", age: 33, email: "oscar@example.com"}
    ]
    render(conn, :members, members: members, page: page, layout: false)
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
