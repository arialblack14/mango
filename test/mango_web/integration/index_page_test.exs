defmodule MangoWeb.IndexPageTest do
  use MangoWeb.IntegrationCase, async: true

  import Wallaby.Query, only: [css: 2]

  test "Has an index page", %{session: session} do
    session
    |> visit("/")
    |> find(css(".navbar-nav", count: 1))
    |> assert_has(css("a", text: "Link"))
  end
end
