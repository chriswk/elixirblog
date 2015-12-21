defmodule Elixirblog.PostTest do
  use Elixirblog.ModelCase

  alias Elixirblog.Post

  @valid_attrs %{content: "some content", posted_at: "2010-04-17 14:00:00", published_at: "2010-04-17 14:00:00", teaser: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
