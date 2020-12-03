# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_payment_exchange'
  s.version     =  '3.3.0'
  s.summary     = 'Payment Method Exchange'
  s.description = 'Payment Method Exchange'
  s.author      = 'Roshan'
  s.email       = 'icemission@@gmail.com'
  s.required_ruby_version = '>= 1.9.3'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
end