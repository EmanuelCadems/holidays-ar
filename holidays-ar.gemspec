
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "holidays/ar/version"

Gem::Specification.new do |spec|
  spec.name          = "holidays-ar"
  spec.version       = Holidays::Ar::VERSION
  spec.authors       = ["Emanuel Alarcón"]
  spec.email         = ["emanuel_cadems@hotmail.com"]

  spec.summary       = %q{This gem obtains all holidays in Argentina}
  spec.description   = %q{Holidays of Argentina obtained from https://www.argentina.gob.ar/interior/feriados}
  spec.homepage      = "https://github.com/EmanuelCadems/holidays-ar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri', '1.8.1'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'webmock', '3.1.1'
  spec.add_development_dependency 'sinatra', '2.0.0'
end
