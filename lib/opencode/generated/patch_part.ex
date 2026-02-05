defmodule OpenCode.Generated.PatchPart do
  @moduledoc """
  Provides struct and type for a PatchPart
  """

  @type t :: %__MODULE__{
          files: [String.t()],
          hash: String.t(),
          id: String.t(),
          message_id: String.t(),
          session_id: String.t(),
          type: String.t()
        }

  defstruct [:files, :hash, :id, :message_id, :session_id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      files: [:string],
      hash: :string,
      id: :string,
      message_id: :string,
      session_id: :string,
      type: {:const, "patch"}
    ]
  end
end
