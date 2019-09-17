Gem::Specification.new do |s|
  s.name = 'gem_api'
  s.version = '1.2.10'
  s.summary = 'gem_api'
  s.description = 'This API provides an aggregated, unified access point to many cryptocurrency exchanges and fiat-to-cryptocurrency onramps.'
  s.authors = ['Gem Support']
  s.email = 'support@gem.co'
  s.homepage = 'https://gem.co'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10')
  s.add_dependency('faraday_middleware', '~> 0.13.1')
  s.add_dependency('test-unit', '~> 3.1', '>= 3.1.5')
  s.add_dependency('certifi', '~> 2016')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
