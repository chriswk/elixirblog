defmodule Elixirblog.Post do
  use Elixirblog.Web, :model

  schema "posts" do
    field :title, :string
    field :posted_at, Ecto.DateTime
    field :published_at, Ecto.DateTime
    field :teaser, :string
    field :content, :string

    has_many :comments, Elixirblog.Comment
    timestamps
  end

  @required_fields ~w(title posted_at published_at teaser content)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def count_comments(query) do
    from p in query,
      group_by: p.id,
      left_join: c in assoc(p, :comments),
      select: {p, count(c.id)}
  end
end
