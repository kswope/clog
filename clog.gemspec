# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{clog}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kevin Swope"]
  s.date = %q{2010-08-23}
  s.description = %q{Little rails debugging gem for writing colorized output to log file.}
  s.email = %q{gems-kevdev@snkmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.html",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.html",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "clog.gemspec",
     "created.rid",
     "init.rb",
     "lib/clog.rb",
     "test/common/functional/public_controller_test.rb",
     "test/common/migrate/20100821014956_create_users.rb",
     "test/common/public_controller.rb",
     "test/common/unit/helpers/public_helper_test.rb",
     "test/common/unit/user_test.rb",
     "test/common/user.rb",
     "test/helper.rb",
     "test/rails2x_root.tar.gz",
     "test/rails2x_root/README",
     "test/rails2x_root/Rakefile",
     "test/rails2x_root/app/controllers/application_controller.rb",
     "test/rails2x_root/app/controllers/public_controller.rb",
     "test/rails2x_root/app/helpers/application_helper.rb",
     "test/rails2x_root/app/helpers/public_helper.rb",
     "test/rails2x_root/app/models/user.rb",
     "test/rails2x_root/config/boot.rb",
     "test/rails2x_root/config/database.yml",
     "test/rails2x_root/config/environment.rb",
     "test/rails2x_root/config/environments/development.rb",
     "test/rails2x_root/config/environments/production.rb",
     "test/rails2x_root/config/environments/test.rb",
     "test/rails2x_root/config/initializers/backtrace_silencers.rb",
     "test/rails2x_root/config/initializers/cookie_verification_secret.rb",
     "test/rails2x_root/config/initializers/inflections.rb",
     "test/rails2x_root/config/initializers/mime_types.rb",
     "test/rails2x_root/config/initializers/new_rails_defaults.rb",
     "test/rails2x_root/config/initializers/session_store.rb",
     "test/rails2x_root/config/locales/en.yml",
     "test/rails2x_root/config/routes.rb",
     "test/rails2x_root/db/schema.rb",
     "test/rails2x_root/db/seeds.rb",
     "test/rails2x_root/public/404.html",
     "test/rails2x_root/public/422.html",
     "test/rails2x_root/public/500.html",
     "test/rails2x_root/public/favicon.ico",
     "test/rails2x_root/public/images/rails.png",
     "test/rails2x_root/public/javascripts/application.js",
     "test/rails2x_root/public/javascripts/controls.js",
     "test/rails2x_root/public/javascripts/dragdrop.js",
     "test/rails2x_root/public/javascripts/effects.js",
     "test/rails2x_root/public/javascripts/prototype.js",
     "test/rails2x_root/public/robots.txt",
     "test/rails2x_root/script/about",
     "test/rails2x_root/script/console",
     "test/rails2x_root/script/dbconsole",
     "test/rails2x_root/script/destroy",
     "test/rails2x_root/script/generate",
     "test/rails2x_root/script/performance/benchmarker",
     "test/rails2x_root/script/performance/profiler",
     "test/rails2x_root/script/plugin",
     "test/rails2x_root/script/runner",
     "test/rails2x_root/script/server",
     "test/rails2x_root/test/fixtures/users.yml",
     "test/rails2x_root/test/performance/browsing_test.rb",
     "test/rails2x_root/test/test_helper.rb",
     "test/rails3x_root/.gitignore",
     "test/rails3x_root/Gemfile",
     "test/rails3x_root/Gemfile.lock",
     "test/rails3x_root/README",
     "test/rails3x_root/Rakefile",
     "test/rails3x_root/app/controllers/application_controller.rb",
     "test/rails3x_root/app/controllers/public_controller.rb",
     "test/rails3x_root/app/helpers/application_helper.rb",
     "test/rails3x_root/app/helpers/public_helper.rb",
     "test/rails3x_root/app/models/user.rb",
     "test/rails3x_root/app/views/layouts/application.html.erb",
     "test/rails3x_root/config.ru",
     "test/rails3x_root/config/application.rb",
     "test/rails3x_root/config/boot.rb",
     "test/rails3x_root/config/database.yml",
     "test/rails3x_root/config/environment.rb",
     "test/rails3x_root/config/environments/development.rb",
     "test/rails3x_root/config/environments/production.rb",
     "test/rails3x_root/config/environments/test.rb",
     "test/rails3x_root/config/initializers/backtrace_silencers.rb",
     "test/rails3x_root/config/initializers/inflections.rb",
     "test/rails3x_root/config/initializers/mime_types.rb",
     "test/rails3x_root/config/initializers/secret_token.rb",
     "test/rails3x_root/config/initializers/session_store.rb",
     "test/rails3x_root/config/locales/en.yml",
     "test/rails3x_root/config/routes.rb",
     "test/rails3x_root/db/schema.rb",
     "test/rails3x_root/db/seeds.rb",
     "test/rails3x_root/lib/tasks/.gitkeep",
     "test/rails3x_root/public/404.html",
     "test/rails3x_root/public/422.html",
     "test/rails3x_root/public/500.html",
     "test/rails3x_root/public/favicon.ico",
     "test/rails3x_root/public/images/rails.png",
     "test/rails3x_root/public/javascripts/application.js",
     "test/rails3x_root/public/javascripts/controls.js",
     "test/rails3x_root/public/javascripts/dragdrop.js",
     "test/rails3x_root/public/javascripts/effects.js",
     "test/rails3x_root/public/javascripts/prototype.js",
     "test/rails3x_root/public/javascripts/rails.js",
     "test/rails3x_root/public/robots.txt",
     "test/rails3x_root/public/stylesheets/.gitkeep",
     "test/rails3x_root/script/rails",
     "test/rails3x_root/test/fixtures/users.yml",
     "test/rails3x_root/test/functional.tar.gz",
     "test/rails3x_root/test/performance/browsing_test.rb",
     "test/rails3x_root/test/test_helper.rb",
     "test/rails3x_root/test/unit.tar.gz",
     "test/test_clog.rb"
  ]
  s.homepage = %q{http://github.com/kswope/clog}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Little rails debugging gem for writing colorized output to log file.}
  s.test_files = [
    "test/common/functional/public_controller_test.rb",
     "test/common/migrate/20100821014956_create_users.rb",
     "test/common/public_controller.rb",
     "test/common/unit/helpers/public_helper_test.rb",
     "test/common/unit/user_test.rb",
     "test/common/user.rb",
     "test/helper.rb",
     "test/rails2x_root/app/controllers/application_controller.rb",
     "test/rails2x_root/app/controllers/public_controller.rb",
     "test/rails2x_root/app/helpers/application_helper.rb",
     "test/rails2x_root/app/helpers/public_helper.rb",
     "test/rails2x_root/app/models/user.rb",
     "test/rails2x_root/config/boot.rb",
     "test/rails2x_root/config/environment.rb",
     "test/rails2x_root/config/environments/development.rb",
     "test/rails2x_root/config/environments/production.rb",
     "test/rails2x_root/config/environments/test.rb",
     "test/rails2x_root/config/initializers/backtrace_silencers.rb",
     "test/rails2x_root/config/initializers/cookie_verification_secret.rb",
     "test/rails2x_root/config/initializers/inflections.rb",
     "test/rails2x_root/config/initializers/mime_types.rb",
     "test/rails2x_root/config/initializers/new_rails_defaults.rb",
     "test/rails2x_root/config/initializers/session_store.rb",
     "test/rails2x_root/config/routes.rb",
     "test/rails2x_root/db/schema.rb",
     "test/rails2x_root/db/seeds.rb",
     "test/rails2x_root/test/performance/browsing_test.rb",
     "test/rails2x_root/test/test_helper.rb",
     "test/rails3x_root/app/controllers/application_controller.rb",
     "test/rails3x_root/app/controllers/public_controller.rb",
     "test/rails3x_root/app/helpers/application_helper.rb",
     "test/rails3x_root/app/helpers/public_helper.rb",
     "test/rails3x_root/app/models/user.rb",
     "test/rails3x_root/config/application.rb",
     "test/rails3x_root/config/boot.rb",
     "test/rails3x_root/config/environment.rb",
     "test/rails3x_root/config/environments/development.rb",
     "test/rails3x_root/config/environments/production.rb",
     "test/rails3x_root/config/environments/test.rb",
     "test/rails3x_root/config/initializers/backtrace_silencers.rb",
     "test/rails3x_root/config/initializers/inflections.rb",
     "test/rails3x_root/config/initializers/mime_types.rb",
     "test/rails3x_root/config/initializers/secret_token.rb",
     "test/rails3x_root/config/initializers/session_store.rb",
     "test/rails3x_root/config/routes.rb",
     "test/rails3x_root/db/schema.rb",
     "test/rails3x_root/db/seeds.rb",
     "test/rails3x_root/test/performance/browsing_test.rb",
     "test/rails3x_root/test/test_helper.rb",
     "test/test_clog.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 0"])
    else
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
    end
  else
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
  end
end

