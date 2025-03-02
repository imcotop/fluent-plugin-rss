# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-test-rss"
  spec.version       = "0.0.1.1"
  spec.authors       = ["harukasan"]
  spec.email         = ["harukasan@pixiv.com"]
  spec.summary       = %q{Fluent input plugin to fetch RSS feed items}
  spec.description   = %q{Fluent input plugin to fetch RSS feed items.}
  spec.homepage      = "https://github.com/harukasan/fluent-plugin-rss"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^test/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "fluentd"
end
