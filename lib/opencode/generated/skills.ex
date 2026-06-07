defmodule OpenCode.Generated.Skills do
  @moduledoc """
  Provides API endpoint related to skills
  """

  @default_client OpenCode.Client

  @type v2_skill_list_200_json_resp :: %{
          data: [OpenCode.Generated.SkillV2Info.t()],
          location: OpenCode.Generated.LocationInfo.t()
        }

  @doc """
  List skills

  Retrieve currently registered skills.

  ## Options

    * `location`

  """
  @spec v2_skill_list(opts :: keyword) ::
          {:ok, OpenCode.Generated.Skills.v2_skill_list_200_json_resp()}
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.UnauthorizedError.t()}
  def v2_skill_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:location])

    client.request(%{
      args: [],
      call: {OpenCode.Generated.Skills, :v2_skill_list},
      url: "/api/skill",
      method: :get,
      query: query,
      response: [
        {200, {OpenCode.Generated.Skills, :v2_skill_list_200_json_resp}},
        {400, {OpenCode.Generated.InvalidRequestError, :t}},
        {401, {OpenCode.Generated.UnauthorizedError, :t}}
      ],
      opts: opts
    })
  end

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(:v2_skill_list_200_json_resp) do
    [
      data: [{OpenCode.Generated.SkillV2Info, :t}],
      location: {OpenCode.Generated.LocationInfo, :t}
    ]
  end
end
