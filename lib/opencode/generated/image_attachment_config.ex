defmodule OpenCode.Generated.ImageAttachmentConfig do
  @moduledoc """
  Provides struct and type for a ImageAttachmentConfig
  """

  @type t :: %__MODULE__{
          auto_resize: boolean | nil,
          max_base6_4_bytes: integer | nil,
          max_height: integer | nil,
          max_width: integer | nil
        }

  defstruct [:auto_resize, :max_base6_4_bytes, :max_height, :max_width]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      auto_resize: :boolean,
      max_base6_4_bytes: :integer,
      max_height: :integer,
      max_width: :integer
    ]
  end
end
