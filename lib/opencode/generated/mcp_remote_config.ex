defmodule OpenCode.Generated.McpRemoteConfig do
  @moduledoc """
  Provides struct and type for a McpRemoteConfig
  """

  @type t :: %__MODULE__{
          enabled: boolean | nil,
          headers: map | nil,
          oauth: false | OpenCode.Generated.McpOAuthConfig.t() | nil,
          timeout: integer | nil,
          type: String.t(),
          url: String.t()
        }

  defstruct [:enabled, :headers, :oauth, :timeout, :type, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      enabled: :boolean,
      headers: :map,
      oauth: {:union, [{OpenCode.Generated.McpOAuthConfig, :t}, const: false]},
      timeout: :integer,
      type: {:const, "remote"},
      url: :string
    ]
  end
end
