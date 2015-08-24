# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weyland/version'

Gem::Specification.new do |spec|
  spec.name          = "weyland"
  spec.version       = Weyland::VERSION
  spec.authors       = ["Sean Kell"]
  spec.email         = ["sean.michael.kell@gmail.com"]

  spec.summary       = %q{Build better software, slay bigger dragons.}
  spec.description   = %q{A build system designed to allow you to focus on writing better software, rather than worrying about your builds.}
  spec.homepage      = "http://github.com/smkell/weyland"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
