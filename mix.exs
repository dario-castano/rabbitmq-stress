defmodule RabbitmqStress.MixProject do
  use Mix.Project

  def project do
    [
      app: :rabbitmq_stress,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RabbitmqStress.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:amqp, "~> 3.1"},
      {:jason, "~> 1.3"}
    ]
  end
end
