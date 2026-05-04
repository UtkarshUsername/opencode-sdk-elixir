defmodule OpenCode.Generated.SessionInfo do
  @moduledoc """
  Provides struct and type for a SessionInfo
  """

  @type t :: %__MODULE__{
          agent: String.t() | nil,
          id: String.t(),
          model: OpenCode.Generated.SessionInfoModel.t() | nil,
          parent_id: String.t() | nil,
          path: String.t() | nil,
          project_id: String.t(),
          time: OpenCode.Generated.SessionInfoTime.t(),
          title: String.t(),
          workspace_id: String.t() | nil
        }

  defstruct [:agent, :id, :model, :parent_id, :path, :project_id, :time, :title, :workspace_id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      agent: :string,
      id: :string,
      model: {OpenCode.Generated.SessionInfoModel, :t},
      parent_id: :string,
      path: :string,
      project_id: :string,
      time: {OpenCode.Generated.SessionInfoTime, :t},
      title: :string,
      workspace_id: :string
    ]
  end
end
