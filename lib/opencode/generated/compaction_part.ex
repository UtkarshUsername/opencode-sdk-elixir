defmodule OpenCode.Generated.CompactionPart do
  @moduledoc """
  Provides struct and type for a CompactionPart
  """

  @type t :: %__MODULE__{
          auto: boolean,
          id: String.t(),
          message_id: String.t(),
          overflow: boolean | nil,
          session_id: String.t(),
          type: String.t()
        }

  defstruct [:auto, :id, :message_id, :overflow, :session_id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      auto: :boolean,
      id: :string,
      message_id: :string,
      overflow: :boolean,
      session_id: :string,
      type: {:const, "compaction"}
    ]
  end
end
