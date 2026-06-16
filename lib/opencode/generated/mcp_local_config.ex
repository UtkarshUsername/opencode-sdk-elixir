defmodule OpenCode.Generated.McpLocalConfig do
  @moduledoc """
  Provides struct and type for a McpLocalConfig
  """

  @type t :: %__MODULE__{
          command: [String.t()],
          cwd: String.t() | nil,
          enabled: boolean | nil,
          environment: map | nil,
          timeout: integer | nil,
          type: String.t()
        }

  defstruct [:command, :cwd, :enabled, :environment, :timeout, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      command: [:string],
      cwd: :string,
      enabled: :boolean,
      environment: :map,
      timeout: :integer,
      type: {:const, "local"}
    ]
  end
end
