defmodule OpenCode.Generated.ControlPlane do
  @moduledoc """
  Provides API endpoint related to control plane
  """

  @default_client OpenCode.Client

  @doc """
  Move session

  Move a session to another project directory, optionally transferring local changes.

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec experimental_control_plane_move_session(body :: map, opts :: keyword) ::
          :ok
          | {:error,
             OpenCode.Generated.InvalidRequestError.t() | OpenCode.Generated.MoveSessionError.t()}
  def experimental_control_plane_move_session(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {OpenCode.Generated.ControlPlane, :experimental_control_plane_move_session},
      url: "/experimental/control-plane/move-session",
      body: body,
      method: :post,
      request: [{"application/json", :map}],
      response: [
        {204, :null},
        {400,
         {:union,
          [
            {OpenCode.Generated.InvalidRequestError, :t},
            {OpenCode.Generated.MoveSessionError, :t}
          ]}}
      ],
      opts: opts
    })
  end
end
