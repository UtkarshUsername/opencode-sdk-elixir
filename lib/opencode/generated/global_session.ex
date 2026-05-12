defmodule OpenCode.Generated.GlobalSession do
  @moduledoc """
  Provides struct and type for a GlobalSession
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          cost: number | nil,
          directory: String.t(),
          id: String.t(),
          model: OpenCode.Generated.GlobalSessionModel.t() | nil,
          parent_id: String.t() | nil,
          path: String.t() | nil,
          permission: [OpenCode.Generated.PermissionRule.t()] | nil,
          project: OpenCode.Generated.ProjectSummary.t() | nil,
          project_id: String.t(),
          revert: OpenCode.Generated.GlobalSessionRevert.t() | nil,
          share: OpenCode.Generated.GlobalSessionShare.t() | nil,
          slug: String.t(),
          summary: OpenCode.Generated.GlobalSessionSummary.t() | nil,
          time: OpenCode.Generated.GlobalSessionTime.t(),
          title: String.t(),
          tokens: OpenCode.Generated.GlobalSessionTokens.t() | nil,
          version: String.t(),
          workspace_id: String.t() | nil
        }

  defstruct [
    :agent,
    :cost,
    :directory,
    :id,
    :model,
    :parent_id,
    :path,
    :permission,
    :project,
    :project_id,
    :revert,
    :share,
    :slug,
    :summary,
    :time,
    :title,
    :tokens,
    :version,
    :workspace_id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      cost: :number,
      directory: :string,
      id: :string,
      model: {OpenCode.Generated.GlobalSessionModel, :t},
      parent_id: :string,
      path: :string,
      permission: [{OpenCode.Generated.PermissionRule, :t}],
      project: {:union, [{OpenCode.Generated.ProjectSummary, :t}, :null]},
      project_id: :string,
      revert: {OpenCode.Generated.GlobalSessionRevert, :t},
      share: {OpenCode.Generated.GlobalSessionShare, :t},
      slug: :string,
      summary: {OpenCode.Generated.GlobalSessionSummary, :t},
      time: {OpenCode.Generated.GlobalSessionTime, :t},
      title: :string,
      tokens: {OpenCode.Generated.GlobalSessionTokens, :t},
      version: :string,
      workspace_id: :string
    ]
  end
end
