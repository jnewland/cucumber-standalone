Gem::Specification.new do |s|
  s.name             = %q{cucumber-standalone}
  s.summary          = %q{generator for standalone cuke projects}
  s.description      = %q{generator for standalone cuke projects}
  s.homepage         = %q{http://github.com/jnewland/cucumber-standalone}
  s.version          = '0.0.1'
  s.authors          = "Jesse Newland"
  s.email            = %q{jnewland@gmail.com}

  s.rubygems_version = %q{1.3.7}
  s.date             = %q{2010-11-05}

  s.require_paths    = ["lib"]
  s.files            = %x{git ls-files}.split("\n")
  s.has_rdoc         = false
  s.executables      = ["cucumber-standalone"]

  s.add_dependency(%q<thor>,     [">= 0.14.4"])
  s.add_dependency(%q<cucumber>, [">= 0.9.3"])
  s.add_dependency(%q<webrat>,   [">= 0.7.2"])
  s.add_dependency(%q<mechanize>,[">= 1.0.0"])
end