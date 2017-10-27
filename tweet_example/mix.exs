defmodule TweetExample.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tweet_example,
      version: "0.1.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :quantum, :extwitter],
      mod: {TweetExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.4.11"},
      {:quantum, "~> 1.8"},
      {:extwitter, "~> 0.9.0"},
      {:oauther, "~> 1.1"}
      #{:oauth, github: "tim/erlang-oauth"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
