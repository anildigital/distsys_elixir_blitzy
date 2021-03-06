defmodule Blitzy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :blitzy,
      version: "0.1.0",
      elixir: "~> 1.5-rc",
      start_permanent: Mix.env == :prod,
      escript: [main_module: Blitzy.CLI], #1
      deps: deps()
    ]
  end

  def escript do
    [main_module: Blitzy.CLI]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [ 
      mod: {Blitzy, []},
      extra_applications: [:logger, :httpoison, :tzdata, :timex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
    {:httpoison, "~> 0.12.0"},
    {:timex, "~> 3.1.24"},
    {:tzdata, "== 0.1.8", override: true}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
