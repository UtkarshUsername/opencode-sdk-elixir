defmodule OpenCode.Generated.Agent do
  @moduledoc """
  Provides struct and type for a Agent
  """

  @type t :: %__MODULE__{
          color: String.t() | nil,
          description: String.t() | nil,
          hidden: boolean | nil,
          mode: String.t(),
          model: OpenCode.Generated.AgentModel.t() | nil,
          name: String.t(),
          native: boolean | nil,
          options: map,
          permission: [OpenCode.Generated.PermissionRule.t()],
          prompt: String.t() | nil,
          steps: integer | nil,
          temperature: number | nil,
          top_p: number | nil,
          variant: String.t() | nil
        }

  defstruct [
    :color,
    :description,
    :hidden,
    :mode,
    :model,
    :name,
    :native,
    :options,
    :permission,
    :prompt,
    :steps,
    :temperature,
    :top_p,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      color: :string,
      description: :string,
      hidden: :boolean,
      mode: {:enum, ["subagent", "primary", "all"]},
      model: {OpenCode.Generated.AgentModel, :t},
      name: :string,
      native: :boolean,
      options: :map,
      permission: [{OpenCode.Generated.PermissionRule, :t}],
      prompt: :string,
      steps: :integer,
      temperature: :number,
      top_p: :number,
      variant: :string
    ]
  end
end
