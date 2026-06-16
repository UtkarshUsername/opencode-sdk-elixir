defmodule OpenCode.Generated.IntegrationSelectPrompt do
  @moduledoc """
  Provides struct and type for a IntegrationSelectPrompt
  """

  @type t :: %__MODULE__{
          key: String.t(),
          message: String.t(),
          options: [OpenCode.Generated.IntegrationSelectPromptOptions.t()],
          type: String.t(),
          when: OpenCode.Generated.IntegrationWhen.t() | nil
        }

  defstruct [:key, :message, :options, :type, :when]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      key: :string,
      message: :string,
      options: [{OpenCode.Generated.IntegrationSelectPromptOptions, :t}],
      type: {:const, "select"},
      when: {OpenCode.Generated.IntegrationWhen, :t}
    ]
  end
end
