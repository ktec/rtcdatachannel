ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Rtcdatachannel.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Rtcdatachannel.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Rtcdatachannel.Repo)

