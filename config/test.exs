use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :actual_edlab_demo, ActualEdlabDemo.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :actual_edlab_demo, ActualEdlabDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "actual_edlab_demo_test",
  size: 1,
  max_overflow: false
