import Config

config :todoapp,
ecto_repos: [Todoapp.Repo]

config :todoapp, Todoapp.Repo,
  database: "todoapp_repo",
  username: "phoenix",
  password: "phoenixproject1",
  hostname: "localhost"
