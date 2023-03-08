defmodule Hcsr04.MixProject do
  use Mix.Project

  def project do
    [
      app: :es_hcsr04,
      version: "0.2.0",
      elixir: "~> 1.14",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "es_Hcsr04",
      source_url: "https://github.com/ESearcy/nerves_hcsr04"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:circuits_gpio, "~> 1.0"},
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Interface with the HC-SR04 ultrasonic distance sensor."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "es_hcsr04",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ESearcy/nerves_hcsr04"}
    ]
  end
end
