defmodule Exred.Node.Trigger.Mixfile do
  use Mix.Project

  @description "Triggers execution of other nodes by sending a configurable message"
  @version File.read!("VERSION") |> String.trim()

  def project do
    [
      app: :exred_node_trigger,
      version: @version,
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      description: @description,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exred_nodeprototype, "~> 0.2"},
      {:ex_doc, "~> 0.19.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Zsolt Keszthelyi"],
      links: %{
        "GitHub" => "https://github.com/exredorg/exred_node_trigger.git",
        "Exred" => "http://exred.org"
      },
      files: ["lib", "mix.exs", "README.md", "LICENSE", "VERSION"]
    }
  end
end
