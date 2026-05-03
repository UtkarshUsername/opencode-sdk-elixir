defmodule OpenCode.Generated.SyncEventSessionUpdatedDataInfo do
  @moduledoc """
  Provides struct and type for a SyncEventSessionUpdatedDataInfo
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          directory: String.t() | nil,
          id: String.t() | nil,
          model: OpenCode.Generated.SyncEventSessionUpdatedDataInfoModel.t() | nil,
          parent_id: String.t() | nil,
          path: String.t() | nil,
          permission: [OpenCode.Generated.PermissionRule.t()] | nil,
          project_id: String.t() | nil,
          revert: OpenCode.Generated.SyncEventSessionUpdatedDataInfoRevert.t() | nil,
          share: OpenCode.Generated.SyncEventSessionUpdatedDataInfoShare.t() | nil,
          slug: String.t() | nil,
          summary: OpenCode.Generated.SyncEventSessionUpdatedDataInfoSummary.t() | nil,
          time: OpenCode.Generated.SyncEventSessionUpdatedDataInfoTime.t() | nil,
          title: String.t() | nil,
          version: String.t() | nil,
          workspace_id: String.t() | nil
        }

  defstruct [
    :agent,
    :directory,
    :id,
    :model,
    :parent_id,
    :path,
    :permission,
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
      agent: {:union, [:string, :null]},
      directory: {:union, [:string, :null]},
      id: {:union, [:string, :null]},
      model: {:union, [{OpenCode.Generated.SyncEventSessionUpdatedDataInfoModel, :t}, :null]},
      parent_id: {:union, [:string, :null]},
      path: {:union, [:string, :null]},
      permission: {:union, [[{OpenCode.Generated.PermissionRule, :t}], :null]},
      project_id: {:union, [:string, :null]},
      revert: {:union, [{OpenCode.Generated.SyncEventSessionUpdatedDataInfoRevert, :t}, :null]},
      share: {OpenCode.Generated.SyncEventSessionUpdatedDataInfoShare, :t},
      slug: {:union, [:string, :null]},
      summary: {:union, [{OpenCode.Generated.SyncEventSessionUpdatedDataInfoSummary, :t}, :null]},
      time: {OpenCode.Generated.SyncEventSessionUpdatedDataInfoTime, :t},
      title: {:union, [:string, :null]},
      version: {:union, [:string, :null]},
      workspace_id: {:union, [:string, :null]}
    ]
  end
end
