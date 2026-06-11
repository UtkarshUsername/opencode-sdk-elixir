defmodule OpenCode.Generated.ConnectorSelectPrompt do
  @moduledoc """
  Provides struct and type for a ConnectorSelectPrompt
  """

  @type t :: %__MODULE__{
          key: String.t(),
          message: String.t(),
          options: [OpenCode.Generated.ConnectorSelectPromptOptions.t()],
          type: String.t(),
          when: OpenCode.Generated.ConnectorWhen.t() | nil
        }

  defstruct [:key, :message, :options, :type, :when]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      key: :string,
      message: :string,
      options: [{OpenCode.Generated.ConnectorSelectPromptOptions, :t}],
      type: {:const, "select"},
      when: {OpenCode.Generated.ConnectorWhen, :t}
    ]
  end
end
