

Gem::Specification.new do |s|

  s.name        = 'clog'

  s.version     = '1.0.0'

  s.summary = "Little rails debugging gem for writing colorized output to log file."

  s.description = "Little rails debugging gem for writing colorized output to log file."

  s.authors = ["Kevin Swope"]

  s.email = "gems-kevdev@snkmail.com"

  s.files = Dir.glob("**/*")

  s.homepage = "http://github.com/kswope/clog"

  s.add_runtime_dependency 'term-ansicolor', '>=0'

end
