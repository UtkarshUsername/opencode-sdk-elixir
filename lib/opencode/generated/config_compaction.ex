defmodule OpenCode.Generated.ConfigCompaction do
  @moduledoc """
  Provides struct and type for a ConfigCompaction
  """

  @type t :: %__MODULE__{
          auto: boolean | nil,
          preserve_recent_tokens: integer | nil,
          prune: boolean | nil,
          reserved: integer | nil,
          tail_turns: integer | nil
        }

  defstruct [:auto, :preserve_recent_tokens, :prune, :reserved, :tail_turns]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      auto: :boolean,
      preserve_recent_tokens: :integer,
      prune: :boolean,
      reserved: :integer,
      tail_turns: :integer
    ]
  end
end
