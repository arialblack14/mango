use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :mango, Mango.Repo,
  username: "postgres",
  password: "postgres",
  database: "mango_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mango, MangoWeb.Endpoint,
  http: [port: 4002],
  server: true

config :mango, :sql_sandbox, true
config :wallaby, screenshot_on_failure: true

# Print only warnings and errors during test
config :logger, level: :warn
