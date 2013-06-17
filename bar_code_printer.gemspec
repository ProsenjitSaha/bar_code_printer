$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bar_code_printer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bar_code_printer"
  s.version     = BarCodePrinter::VERSION
  s.authors     = ["Peter M. Goldstein"]
  s.email       = ["peter.goldstein@therealreal.com"]
  s.homepage    = "http://www.therealreal.com"
  s.summary     = "Engine used in TheRealReal applications to display and print barcodes."
  s.description = "Engine used in TheRealReal applications to display and print barcodes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "barby"
  s.add_dependency "chunky_png"

  s.add_development_dependency "rspec-rails", "~> 2.0"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "factory_girl_rails", '>= 4.0.0'
  s.add_development_dependency "simplecov"
end
