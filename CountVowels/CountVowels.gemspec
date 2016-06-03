lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.CountVowels          = "Count Vowels"
  spec.version       = '1.0'
  spec.authors       = ["ShadowfeindX"]
  spec.email         = ["shadowfeind@programmer.net"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "https://github.com/ShadowfeindX/coding-practice/"
  spec.license       = "GNU GENERAL PUBLIC LICENSE"

  spec.files         = ['lib/CountVowels.rb']
  spec.executables   = ['bin/CountVowels']
  spec.test_files    = ['tests/test_CountVowels.rb']
  spec.require_paths = ["lib"]
end