# -*- encoding: utf-8 -*-
require File.expand_path('../lib/csv_reader/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Deepali Kherudkar"]
  gem.email         = ["deepali@bangthetable.com"]
  gem.description   = %q{CSV Reader}
  gem.summary       = %q{CSV Reader}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "csv_reader"
  gem.require_paths = ["lib"]
  gem.version       = CsvReader::VERSION
end
