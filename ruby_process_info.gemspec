# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'ruby_process_info/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'ruby_process_info'
  spec.version     = RubyProcessInfo::VERSION
  spec.authors     = ['Potok']
  spec.email       = ['tech@potok.io']
  spec.homepage    = 'https://potok.io'
  spec.summary     = 'ruby_process_info'
  spec.description = 'ruby_process_info'
  spec.license     = 'MIT'
  spec.files       = `git ls-files`.split("\n")
  spec.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency 'rake-compiler'
  spec.extensions << 'ext/extconf.rb'
end
