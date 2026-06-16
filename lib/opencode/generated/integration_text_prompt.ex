defmodule OpenCode.Generated.IntegrationTextPrompt do
  @moduledoc """
  Provides struct and type for a IntegrationTextPrompt
  """

  @type t :: %__MODULE__{
          key: String.t(),
          message: String.t(),
          placeholder: String.t() | nil,
          type: String.t(),
          when: OpenCode.Generated.IntegrationWhen.t() | nil
        }

  defstruct [:key, :message, :placeholder, :type, :when]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      key: :string,
      message: :string,
      placeholder: :string,
      type: {:const, "text"},
      when: {OpenCode.Generated.IntegrationWhen, :t}
    ]
  end
end
