defmodule OpenCode.Generated.ConnectorKeyMethod do
  @moduledoc """
  Provides struct and type for a ConnectorKeyMethod
  """

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          prompts:
            [
              OpenCode.Generated.ConnectorSelectPrompt.t()
              | OpenCode.Generated.ConnectorTextPrompt.t()
            ]
            | nil,
          type: String.t()
        }

  defstruct [:id, :label, :prompts, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      label: :string,
      prompts: [
        union: [
          {OpenCode.Generated.ConnectorSelectPrompt, :t},
          {OpenCode.Generated.ConnectorTextPrompt, :t}
        ]
      ],
      type: {:const, "key"}
    ]
  end
end
