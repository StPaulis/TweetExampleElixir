defmodule TweetExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    
    # List all child processes to be supervised
    children = [
      # TweetExample.Worker.start_link([])
      # {TweetExample.Worker, arg},
      worker(TweetExample.TweetServer,[])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TweetExample.Supervisor]
    process = Supervisor.start_link(children, opts)
    TweetExample.Scheduler.schedule_file("* * * * *", 
    Path.join("#{:code.priv_dir(:tweet_example)}","sample.txt" ))

    process
  end
end
