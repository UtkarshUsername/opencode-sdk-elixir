defmodule OpenCode.MixProject do
  use Mix.Project

  @version "0.1.41"
  @source_url "https://github.com/UtkarshUsername/opencode-sdk-elixir"

  def project do
    [
      app: :opencode_sdk,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      docs: docs(),
      source_url: @source_url
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  defp deps do
    [
      {:req, "~> 0.5.0"},
      {:jason, "~> 1.2"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:oapi_generator, "~> 0.4", only: [:dev, :test], runtime: false}
    ]
  end

  defp description do
    """
    Unofficial OpenCode SDK for Elixir. A complete Elixir SDK for OpenCode,
    providing server creation, session management, messaging, file operations, and more.
    Mirrors the functionality of the official JavaScript SDK (@opencode-ai/sdk).
    Not affiliated with or built by the OpenCode team.
    """
  end

  defp package do
    [
      name: :opencode_sdk,
      files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["UtkarshUsername"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
        "OpenCode" => "https://opencode.ai"
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v#{@version}",
      source_url: @source_url
    ]
  end
end
