# -*- encoding: utf-8 -*-
# stub: turbolinks 2.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "turbolinks".freeze
  s.version = "2.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2023-08-02"
  s.email = "david@loudthinking.com".freeze
  s.files = ["MIT-LICENSE".freeze, "README.md".freeze, "lib/assets/javascripts/turbolinks.js.coffee".freeze, "lib/turbolinks.rb".freeze, "lib/turbolinks/cookies.rb".freeze, "lib/turbolinks/redirection.rb".freeze, "lib/turbolinks/version.rb".freeze, "lib/turbolinks/x_domain_blocker.rb".freeze, "lib/turbolinks/xhr_headers.rb".freeze, "lib/turbolinks/xhr_url_for.rb".freeze, "test/config.ru".freeze, "test/dummy.gif".freeze, "test/index.html".freeze, "test/manifest.appcache".freeze, "test/offline.html".freeze, "test/other.html".freeze, "test/redirect1.html".freeze, "test/redirect2.html".freeze, "test/reload.html".freeze, "test/withoutextension".freeze]
  s.homepage = "https://github.com/rails/turbolinks/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Turbolinks makes following links in your web application faster (use with Rails Asset Pipeline)".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<coffee-rails>.freeze, [">= 0"])
  else
    s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
  end
end
