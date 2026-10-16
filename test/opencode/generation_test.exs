defmodule OpenCode.GenerationTest do
  use ExUnit.Case, async: false

  test "rejects HTTP error pages and invalid specs before generation" do
    path = Path.join(System.tmp_dir!(), "opencode-invalid-#{System.unique_integer([:positive])}.json")
    on_exit(fn -> File.rm(path) end)

    for content <- ["404: Not Found", "{}", ~s({"openapi":"3.1.0","paths":{}})] do
      File.write!(path, content)

      assert_raise Mix.Error, ~r/Invalid OpenAPI spec/, fn ->
        Mix.Tasks.Opencode.Gen.Client.run(["--spec", path])
      end
    end
  end
end
