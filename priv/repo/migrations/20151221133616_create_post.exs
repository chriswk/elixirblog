defmodule Elixirblog.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :posted_at, :datetime
      add :published_at, :datetime
      add :teaser, :text
      add :content, :text

      timestamps
    end

  end
end
