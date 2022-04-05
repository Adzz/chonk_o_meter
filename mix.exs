defmodule ChonkOMeter.MixProject do
  use Mix.Project

  def project do
    [
      app: :chonk_o_meter,
      version: "0.1.0",
      elixir: "~> 1.12",
      aliases: aliases(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp aliases() do
    [docs: ["docs", &copy_pictures/1, &create_livebook/1]]
  end

  defp copy_pictures(_) do
    File.cp_r(Path.expand("./images/"), Path.expand("./doc/images/"))
  end

  defp create_livebook(_) do
    Mix.Task.run("create_livebook_from_module", ["ChonkOMeter", "chonk_o_meter_livebook"])
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">=0.0.0", runtime: false, only: [:docs, :dev]},
      {:livebook_helpers, ">=0.0.0", only: [:docs, :dev]},
    ]
  end
end
