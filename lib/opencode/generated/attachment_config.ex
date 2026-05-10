defmodule OpenCode.Generated.AttachmentConfig do
  @moduledoc """
  Provides struct and type for a AttachmentConfig
  """

  @type t :: %__MODULE__{image: OpenCode.Generated.ImageAttachmentConfig.t() | nil}

  defstruct [:image]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [image: {OpenCode.Generated.ImageAttachmentConfig, :t}]
  end
end
