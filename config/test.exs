import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :koyeb_docker_compose_test, KoyebDockerComposeTest.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "koyeb_docker_compose_test_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: System.schedulers_online() * 2

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :koyeb_docker_compose_test, KoyebDockerComposeTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "d0kk+wGvxND07Mm4LUA16ShpF3A6x2Lddcl74WQZGAFFPNNV+xfxv8MGbr1nOGRb",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
