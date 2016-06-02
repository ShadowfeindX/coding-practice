lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Reverse A String"
  spec.version       = '1.0'
  spec.authors       = ["ShadowfeindX"]
  spec.email         = ["shadowfeind@programmer.net"]
  spec.summary       = %q{Reverses a string.}
  spec.description   = %q{Takes a string as user input and outputs the reverse.}
  spec.homepage      = "https://github.com/ShadowfeindX/coding-practice/"
  spec.license       = "GNU GENERAL PUBLIC LICENSE"

  spec.files         = ['lib/StringReverse.rb']
  spec.executables   = ['bin/StringReverse']
  spec.test_files    = ['tests/test_StringReverse.rb']
  spec.require_paths = ["lib"]
end