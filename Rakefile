task :default => [:usage]
task :help => [:usage]
task :build => [:multiarch_build]
task :b => [:multiarch_build]

CONTAINER_NAME = 'unixorn/debian-py3'

task :usage do
  puts 'Usage:'
  puts
  puts 'rake build:      Create the container for docker-compose'
  puts
end

# Tasks

desc 'Use buildx to make a multi-arch container'
task :multiarch_build do
  puts "Building #{CONTAINER_NAME}"
  sh %{ docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64 --push -t #{CONTAINER_NAME} .}
  sh %{ docker pull #{CONTAINER_NAME} }
end
