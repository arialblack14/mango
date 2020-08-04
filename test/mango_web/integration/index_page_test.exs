defmodule MangoWeb.IndexPageTest do
  use MangoWeb.IntegrationCase, async: true
  use Wallaby.Feature

  import Wallaby.Query, only: [css: 2, text_field: 1, button: 1]

  def index_title(title), do: css("h1", text: title)
  def product_name(name), do: css(".product-name", text: name)
  def product_price(price), do: css(".product-price", text: price)

  test "Has an index page", %{session: session} do
    session
    |> visit("/")
    |> find(css(".navbar-nav", count: 1))
    |> assert_has(css("a", text: "Link"))
  end

  feature "presence of featured products", %{session: session} do
    session
    |> visit("/")
    |> assert_has(css("h1", text: "Seasonal products"))
  end

  feature "index page has displays products with their names", %{session: session} do
    session
    |> visit("/")
    |> assert_has(index_title("Seasonal products"))

    session
    |> assert_has(product_name("Apple"))

    session
    |> assert_has(product_price("100"))

    session
    |> refute_has(product_name("Tomato"))
  end
end
