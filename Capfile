
# Load DSL and Setup Up Stages
require 'capistrano/setup'
require 'capistrano/deploy'
require "capistrano/rails/assets"
require "capistrano/rails/migrations"

require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/postgresql'
require 'capistrano/rvm'
require 'capistrano/puma'


# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }