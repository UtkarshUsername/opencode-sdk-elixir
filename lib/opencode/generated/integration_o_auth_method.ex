defmodule OpenCode.Generated.IntegrationOAuthMethod do
  @moduledoc """
  Provides struct and type for a IntegrationOAuthMethod
  """

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          prompts:
            [
              OpenCode.Generated.IntegrationSelectPrompt.t()
              | OpenCode.Generated.IntegrationTextPrompt.t()
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
          {OpenCode.Generated.IntegrationSelectPrompt, :t},
          {OpenCode.Generated.IntegrationTextPrompt, :t}
        ]
      ],
      type: {:const, "oauth"}
    ]
  end
end
