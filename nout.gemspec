Gem::Specification.new do |s|
  s.name = 'nout'
  s.version = '0.0.1'
  s.date = '2016-02-03'
  s.summary = 'Git to tutorials'
  s.description = 'A little helper to write code tutorials from git.'
  s.authors = ['Yves Brissaud']
  s.email = 'yves.brissaud@gmail.com'
  all_files = `git ls-files -z`.split("\x0")
  s.files = all_files.grep(%r{^(bin|lib)/})
  s.executables = all_files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.homepage = 'https://github.com/eunomie/nout'
  s.license = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'
  s.add_development_dependency 'guard', '~> 2.13', '>= 2.13.0'
  s.add_development_dependency 'guard-rspec', '~> 4.6', '>= 4.6.4'
  s.add_development_dependency 'simplecov', '~> 0.10', '>= 0.10.0'
  s.add_development_dependency 'cucumber', '~> 2.3', '>= 2.3.2'
  s.add_development_dependency 'guard-cucumber', '~> 2.0'
  s.add_development_dependency 'rake', '~> 10.5'
end
