lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.PigLatin          = "Pig Latin"
  spec.version       = '1.0'
  spec.authors       = ["ShadowfeindX"]
  spec.email         = ["shadowfeind@programmer.net"]
  spec.summary       = %q{Translates input to pig latin.}
  spec.description   = %q{Takes a string as input and converts all the words in the string to pig latin.}
  spec.homepage      = "https://github.com/ShadowfeindX/coding-practice/"
  spec.license       = "GNU GENERAL PUBLIC LICENSE"

  spec.files         = ['lib/PigLatin.rb']
  spec.executables   = ['bin/PigLatin']
  spec.test_files    = ['tests/test_PigLatin.rb']
  spec.require_paths = ["lib"]
end