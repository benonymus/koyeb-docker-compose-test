defmodule KoyebDockerComposeTest.Repo.Migrations.TestDataModel do
  use Ecto.Migration

  def change do
    create table(:data_model) do
      add(:title, :string)
      add(:description, :text)

      timestamps()
    end
  end
end
