def gemfile
  Dir['pkg/*'].sort.last
end

task :install do
  sh 'gem build read.gemspec'
  sh 'mkdir -p pkg'
  sh 'mv *.gem pkg/'
  sh "gem install -l #{gemfile}"
end

task :release do
  sh "gem push #{gemfile}"
end

task :tag do
  sh "git tag -a v`cat VERSION` `git rev-parse HEAD` -m ''"
end
