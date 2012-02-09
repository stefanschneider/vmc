
$:.unshift File.expand_path("../lib", __FILE__)

require 'cli/version'

spec = Gem::Specification.new do |s|
  s.name = "vmc-uhuru"
  s.version = VMC::Cli::VERSION
  s.author = "VMware; Uhurusoftware"
  s.email = "uhuru@uhurusoftware.com"
  s.homepage = "http://www.uhurusoftware.com"
  s.description = s.summary = "Client library and CLI that provides access to the VMware Cloud Application Platform + support for .Net Framework."
  s.executables = %w(vmcu)

  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ["README.md", "LICENSE"]

  s.add_dependency "json_pure", ">= 1.5.1", "< 1.7.0"
  s.add_dependency "rubyzip", "~> 0.9.4"
  s.add_dependency "rest-client", ">= 1.6.1", "< 1.7.0"
  s.add_dependency "terminal-table", "~> 1.4.2"
  s.add_dependency "interact", "~> 0.3.0"
  s.add_dependency "addressable", "~> 2.2.6"
  s.add_dependency "uuidtools", "~> 2.1.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec",   "~> 1.3.0"
  s.add_development_dependency "webmock", "= 1.5.0"

  s.bindir  = "bin"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.md Rakefile config/clients.yml) + Dir.glob("{lib,caldecott_helper}/**/*")
end
