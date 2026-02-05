defmodule OpenCode.Generated.MessageRequest do
  @moduledoc """
  Provides struct and type for a MessageRequest
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          message_id: String.t() | nil,
          model: map | nil,
          parts: [OpenCode.Generated.Part.t()] | nil,
          variant: String.t() | nil
        }

  defstruct [:agent, :message_id, :model, :parts, :variant]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      message_id: :string,
      model: :map,
      parts: [{OpenCode.Generated.Part, :t}],
      variant: :string
    ]
  end
end
