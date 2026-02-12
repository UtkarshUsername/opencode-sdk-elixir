defmodule OpenCode.Generated.OutputFormatJsonSchema do
  @moduledoc """
  Provides struct and type for a OutputFormatJsonSchema
  """

  @type t :: %__MODULE__{retry_count: integer | nil, schema: map, type: String.t()}

  defstruct [:retry_count, :schema, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [retry_count: :integer, schema: :map, type: {:const, "json_schema"}]
  end
end
