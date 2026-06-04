defmodule OpenCode.Generated.AgentV2Info do
  @moduledoc """
  Provides struct and type for a AgentV2Info
  """

  @type t :: %__MODULE__{
          color: String.t() | nil,
          description: String.t() | nil,
          hidden: boolean,
          id: String.t(),
          mode: String.t(),
          model: OpenCode.Generated.AgentV2InfoModel.t() | nil,
          permissions: [OpenCode.Generated.PermissionV2Rule.t()],
          request: OpenCode.Generated.AgentV2InfoRequest.t(),
          steps: integer | nil,
          system: String.t() | nil
        }

  defstruct [
    :color,
    :description,
    :hidden,
    :id,
    :mode,
    :model,
    :permissions,
    :request,
    :steps,
    :system
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
      hidden: :boolean,
      id: :string,
      mode: {:enum, ["subagent", "primary", "all"]},
      model: {OpenCode.Generated.AgentV2InfoModel, :t},
      permissions: [{OpenCode.Generated.PermissionV2Rule, :t}],
      request: {OpenCode.Generated.AgentV2InfoRequest, :t},
      steps: :integer,
      system: :string
    ]
  end
end
