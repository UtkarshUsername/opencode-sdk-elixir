defmodule OpenCode.Generated.SyncEventSessionUpdatedDataInfoRevert do
  @moduledoc """
  Provides struct and type for a SyncEventSessionUpdatedDataInfoRevert
  """

  @type t :: %__MODULE__{
          diff: String.t() | nil,
          message_id: String.t(),
          part_id: String.t() | nil,
          snapshot: String.t() | nil
        }

  defstruct [:diff, :message_id, :part_id, :snapshot]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [diff: :string, message_id: :string, part_id: :string, snapshot: :string]
  end
end
