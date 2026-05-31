defmodule OpenCode.Generated.EventPermissionAskedPropertiesTool do
  @moduledoc """
  Provides struct and type for a EventPermissionAskedPropertiesTool
  """

  @type t :: %__MODULE__{call_id: String.t(), message_id: String.t()}

  defstruct [:call_id, :message_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [call_id: :string, message_id: :string]
  end
end
