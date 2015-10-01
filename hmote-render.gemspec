Gem::Specification.new do |s|
  s.name        = "hmote-render"
  s.version     = "1.0.0"
  s.summary     = "HMote plugin for Cuba"
  s.description = s.summary
  s.authors     = ["Francesco Rodríguez"]
  s.email       = ["frodsan@protonmail.ch"]
  s.homepage    = "https://github.com/harmoni/hmote-render"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "hmote", "~> 1.3"

  s.add_development_dependency "cuba", "3.4.0"
  s.add_development_dependency "cutest", "1.2.2"
  s.add_development_dependency "rack-test", "0.6.3"
end
