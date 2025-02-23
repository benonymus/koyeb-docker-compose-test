defmodule KoyebDockerComposeTest.DataModels.DataModels do
  alias KoyebDockerComposeTest.Repo
  alias KoyebDockerComposeTest.DataModels.DataModel

  @doc """
  Get all Calculations
  """
  def list_all(), do: Repo.all(DataModel)

  @doc """
  Creates a calculation.
  """
  def create(params), do: DataModel.changeset(%DataModel{}, params) |> Repo.insert!()
end
