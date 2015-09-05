defmodule ExDocTests.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_doc_tests,
      version: "0.0.1",
      elixir: "~> 1.1-dev",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      name: "ExDoc Tests",
      source_url: "https://github.com/eksperimental/ex_doc_tests",
      homepage_url: "https://github.com/eksperimental/ex_doc_tests",

      data_dir: "./sample_data",
      default_task: "build_docs",
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.8", only: :dev},
    ]
  end
end
