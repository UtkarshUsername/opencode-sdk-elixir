defmodule OpenCode.Generated.GlobalSession do
  @moduledoc """
  Provides struct and type for a GlobalSession
  """

  @type t :: %__MODULE__{
          directory: String.t(),
          id: String.t(),
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
          version: String.t(),
          workspace_id: String.t() | nil
        }

  defstruct [
    :directory,
    :id,
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
    :version,
    :workspace_id
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      directory: :string,
      id: :string,
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
      version: :string,
      workspace_id: :string
    ]
  end
end
