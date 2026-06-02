defmodule OpenCode.Generated.PermissionV2Source do
  @moduledoc """
  Provides struct and type for a PermissionV2Source
  """

  @type t :: %__MODULE__{call_id: String.t(), message_id: String.t(), type: String.t()}

  defstruct [:call_id, :message_id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, message_id: :string, type: {:const, "tool"}]
  end
end
