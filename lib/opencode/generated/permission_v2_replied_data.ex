defmodule OpenCode.Generated.PermissionV2RepliedData do
  @moduledoc """
  Provides struct and type for a PermissionV2RepliedData
  """

  @type t :: %__MODULE__{reply: String.t(), request_id: String.t(), session_id: String.t()}

  defstruct [:reply, :request_id, :session_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [reply: {:enum, ["once", "always", "reject"]}, request_id: :string, session_id: :string]
  end
end
