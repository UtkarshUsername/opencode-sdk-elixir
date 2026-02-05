defmodule OpenCode.Generated.AgentConfig do
  @moduledoc """
  Provides struct and type for a AgentConfig
  """

  @type t :: %__MODULE__{
          color: String.t() | nil,
          description: String.t() | nil,
          disable: boolean | nil,
          hidden: boolean | nil,
          max_steps: integer | nil,
          mode: String.t() | nil,
          model: String.t() | nil,
          options: map | nil,
          permission: map | String.t() | nil,
          prompt: String.t() | nil,
          steps: integer | nil,
          temperature: number | nil,
          tools: map | nil,
          top_p: number | nil,
          variant: String.t() | nil
        }

  defstruct [
    :color,
    :description,
    :disable,
    :hidden,
    :max_steps,
    :mode,
    :model,
    :options,
    :permission,
    :prompt,
    :steps,
    :temperature,
    :tools,
    :top_p,
    :variant
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      color:
        {:union,
         [
           :string,
           enum: ["primary", "secondary", "accent", "success", "warning", "error", "info"]
         ]},
      description: :string,
      disable: :boolean,
      hidden: :boolean,
      max_steps: :integer,
      mode: {:enum, ["subagent", "primary", "all"]},
      model: :string,
      options: :map,
      permission: {:union, [:map, enum: ["ask", "allow", "deny"]]},
      prompt: :string,
      steps: :integer,
      temperature: :number,
      tools: :map,
      top_p: :number,
      variant: :string
    ]
  end
end
