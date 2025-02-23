defmodule KoyebDockerComposeTest.DataModels.DataModel do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:id, :title, :description]}
  schema "data_model" do
    field(:title, :string)
    field(:description, :string)

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = dm, attrs) do
    dm
    |> cast(attrs, [:description, :title])
  end
end
