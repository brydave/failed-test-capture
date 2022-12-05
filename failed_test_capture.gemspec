require_relative 'lib/failed_test_capture/version'

Gem::Specification.new do |spec|
  spec.name          = "failed_test_capture"
  spec.version       = FailedTestCapture::VERSION
  spec.authors       = ["Bry"]
  spec.email         = ["bryan.hunt@hey.com"]

  spec.summary       = %q{Capture failed test and re-run them quickly.}
  spec.description   = %q{Sometimes we have flaky tests or a group of tests break and we need to quickly re-run those tests. This lets us capture groups of failed tests and run them again quickly.}
  spec.homepage      = "https://brydave.dev"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/brydave/failed-test-capture.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/brydave/failed-test-capture.git"
  spec.metadata["changelog_uri"] = "https://github.com/brydave/failed-test-capture/releases/tag/pre-release"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
