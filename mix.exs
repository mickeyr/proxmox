defmodule Proxmox.Mixfile do
  use Mix.Project

  @description """
    Proxmox API Wrapping GenServer
  """

  def project do
    [app: :proxmox,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     name: "Proxmox",
     description: @description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger],
     mod: {Proxmox, []}]
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
      {:httpoison, "~> 0.4.2"}
    ]
  end

  defp package do
    [ contributors: ["Malcolm Roberts"],
      licenses: ["MIT"],
      links: [ {"Github", "https://github.com/mickeyr/proxmox"}]
    ]
  end
end
