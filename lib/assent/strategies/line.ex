defmodule Assent.Strategy.LINE do
  @moduledoc """
  LINE Login OpenID Connect Strategy.

  ## Usage

    config = [
      client_id: "REPLACE_WITH_CLIENT_ID",
      client_secret: "REPLACE_WITH_CLIENT_SECRET"
    ]

  See `Assent.Strategy.OIDC` for more.
  """

  use Assent.Strategy.OIDC.Base

  @impl true
  def default_config(_config) do
    [
      site: "https://access.line.me",
      authorization_params: [scope: "email profile", response_type: "code"],
      id_token_signed_response_alg: "HS256"
    ]
  end
end
