defmodule OpenCode.Generated.SessionInfo do
  @moduledoc """
  Provides struct and type for a SessionInfo
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          cost: number,
          id: String.t(),
          model: OpenCode.Generated.SessionInfoModel.t() | nil,
          parent_id: String.t() | nil,
          path: String.t() | nil,
          project_id: String.t(),
          time: OpenCode.Generated.SessionInfoTime.t(),
          title: String.t(),
          tokens: OpenCode.Generated.SessionInfoTokens.t(),
          workspace_id: String.t() | nil
        }

  defstruct [
    :agent,
    :cost,
    :id,
    :model,
    :parent_id,
    :path,
    :project_id,
    :time,
    :title,
    :tokens,
    :workspace_id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      cost: :number,
      id: :string,
      model: {OpenCode.Generated.SessionInfoModel, :t},
      parent_id: :string,
      path: :string,
      project_id: :string,
      time: {OpenCode.Generated.SessionInfoTime, :t},
      title: :string,
      tokens: {OpenCode.Generated.SessionInfoTokens, :t},
      workspace_id: :string
    ]
  end
end
