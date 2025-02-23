defmodule KoyebDockerComposeTestWeb.PageController do
  use KoyebDockerComposeTestWeb, :controller

  alias KoyebDockerComposeTest.DataModels.DataModels

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def data(conn, _params) do
    data = DataModels.list_all()

    conn
    |> put_resp_content_type("application/json")
    |> put_root_layout(false)
    |> send_resp(200, Jason.encode!(data))
  end

  def create(conn, params) do
    DataModels.create(params)
    conn |> send_resp(:ok, "done")
  end
end
