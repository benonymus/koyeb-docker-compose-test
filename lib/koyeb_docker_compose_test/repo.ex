defmodule KoyebDockerComposeTest.Repo do
  use Ecto.Repo,
    otp_app: :koyeb_docker_compose_test,
    adapter: Ecto.Adapters.Postgres
end
