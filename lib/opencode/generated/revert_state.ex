defmodule OpenCode.Generated.RevertState do
  @moduledoc """
  Provides struct and type for a RevertState
  """

  @type t :: %__MODULE__{
          diff: String.t() | nil,
          files: [OpenCode.Generated.FileDiff.t()] | nil,
          message_id: String.t(),
          part_id: String.t() | nil,
          snapshot: String.t() | nil
        }

  defstruct [:diff, :files, :message_id, :part_id, :snapshot]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      diff: :string,
      files: [{OpenCode.Generated.FileDiff, :t}],
      message_id: :string,
      part_id: :string,
      snapshot: :string
    ]
  end
end
