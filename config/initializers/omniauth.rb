# frozen_string_literal: true

# Omniauth strategies for GitHub, Facebook, Google, and Apple
GITHUB_CREDENTIALS = {
  key: Rails.application.credentials.dig(:github, :key),
  secret: Rails.application.credentials.dig(:github, :secret)
}.freeze

FACEBOOK_CREDENTIALS = {
  key: Rails.application.credentials.dig(:facebook, :key),
  secret: Rails.application.credentials.dig(:facebook, :secret)
}.freeze

GOOGLE_CREDENTIALS = {
  key: Rails.application.credentials.dig(:google, :key),
  secret: Rails.application.credentials.dig(:google, :secret)
}.freeze

APPLE_CREDENTIALS = {
  client_id: Rails.application.credentials.dig(:apple, :client_id),
  team_id: Rails.application.credentials.dig(:apple, :team_id),
  key: Rails.application.credentials.dig(:apple, :key),
  pem: Rails.application.credentials.dig(:apple, :pem)
}.freeze

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, GITHUB_CREDENTIALS[:key], GITHUB_CREDENTIALS[:secret], scope: "email, profile"
  provider :facebook, FACEBOOK_CREDENTIALS[:key], FACEBOOK_CREDENTIALS[:key]
  provider :google_oauth2, GOOGLE_CREDENTIALS[:key], GOOGLE_CREDENTIALS[:key]
  provider :apple, APPLE_CREDENTIALS[:key], "", {
                                                  scope: "email name",
                                                  team_id: APPLE_CREDENTIALS[:key],
                                                  key_id: APPLE_CREDENTIALS[:key],
                                                  pem: APPLE_CREDENTIALS[:key]
                                                }
end
