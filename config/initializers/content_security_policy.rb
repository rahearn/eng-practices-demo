# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy
# For further information see the following documentation
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self
    policy.font_src :self
    policy.form_action :self
    policy.frame_ancestors :none
    policy.img_src :self, :data
    policy.object_src :none
    policy.script_src :self, "https://js-agent.newrelic.com", "https://*.nr-data.net"
    policy.connect_src :self, "https://*.nr-data.net"
    policy.style_src :self
  end

  #
  #   # Generate session nonces for permitted importmap and inline scripts
  config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
  config.content_security_policy_nonce_directives = %w[script-src]
  #
  #   # Report CSP violations to a specified URI. See:
  #   # https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
  #   # config.content_security_policy_report_only = true
end
