use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :actual_edlab_demo, ActualEdlabDemo.Endpoint,
  secret_key_base: "r9R7pavwDWWh3iXadaPULVYpEVtUsUrVGs4h+W3BlQYBgZ1xRuAmqMe8FkVBujHQ"

# Configure your database
config :actual_edlab_demo, ActualEdlabDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "actual_edlab_demo_prod"
