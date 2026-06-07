defmodule OpenCode.Generated.Reference do
  @moduledoc """
  Provides API endpoint related to reference
  """

  @default_client OpenCode.Client

  @type reference_list_200_json_resp :: %{
          branch: String.t() | nil,
          kind: String.t(),
          message: String.t(),
          name: String.t(),
          path: String.t(),
          repository: String.t() | nil
        }

  @doc """
  List configured references

  List configured references resolved in the current workspace.

  ## Options

    * `directory`
    * `workspace`

  """
  @spec reference_list(opts :: keyword) ::
          {:ok, [OpenCode.Generated.Reference.reference_list_200_json_resp()]}
          | {:error, OpenCode.Generated.BadRequestError.t()}
  def reference_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:directory, :workspace])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Reference, :reference_list},
      url: "/reference",
      method: :get,
      query: query,
      response: [
        {200, [{OpenCode.Generated.Reference, :reference_list_200_json_resp}]},
        {400, {OpenCode.Generated.BadRequestError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:reference_list_200_json_resp) do
    [
      branch: :string,
      kind: {:enum, ["git", "invalid", "local"]},
      message: :string,
      name: :string,
      path: :string,
      repository: :string
    ]
  end
end
