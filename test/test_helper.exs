ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Mango.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :screenshot_on_failure, true)
Application.put_env(:wallaby, :base_url, MangoWeb.Endpoint.url())
