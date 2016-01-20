ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixPushstream.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixPushstream.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixPushstream.Repo)

