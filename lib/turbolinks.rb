require 'turbolinks/version'
require 'turbolinks/xhr_headers'
require 'turbolinks/xhr_url_for'
require 'turbolinks/cookies'
require 'turbolinks/x_domain_blocker'
require 'turbolinks/redirection'

module Turbolinks
  class Engine < ::Rails::Engine
    initializer :turbolinks do |config|
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.class_eval do
          include XHRHeaders, Cookies, XDomainBlocker, Redirection
          before_action :set_xhr_redirected_to, :set_request_method_cookie
          after_action :abort_xdomain_redirect
        end

        ActionDispatch::Request.class_eval do
          def referer
            self.headers['X-XHR-Referer'] || super
          end
          alias referrer referer
        end
      end

      ActiveSupport.on_load(:action_view) do
        (ActionView::RoutingUrlFor rescue ActionView::Helpers::UrlHelper).module_eval do
          prepend XHRUrlFor
        end
      end unless RUBY_VERSION =~ /^1\.8/
    end
  end
end
