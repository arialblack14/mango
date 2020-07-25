ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Mango.Repo, :manual)
{:ok, _} = Application.ensure_all_started(:wallaby)
