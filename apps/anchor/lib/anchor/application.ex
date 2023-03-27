defmodule Anchor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Anchor.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Anchor.PubSub},
      # Start Finch
      {Finch, name: Anchor.Finch}
      # Start a worker by calling: Anchor.Worker.start_link(arg)
      # {Anchor.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Anchor.Supervisor)
  end
end
