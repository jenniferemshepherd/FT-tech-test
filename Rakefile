require 'pg'
require './app/app.rb'
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob("spec/**/*_spec.rb")
  t.rspec_opts = "--format documentation"
end
task default: :spec


task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'ft_ratings_test')

  connection.exec("TRUNCATE ratings;")

  connection.exec("INSERT INTO ratings (score) VALUES(1);")
  connection.exec("INSERT INTO ratings (score) VALUES(2);")
end

# namespace :db do
  task :create do
    p "Creating databases..."

    ['ft_ratings', 'ft_ratings_test'].each do |database|
      connection = PG.connect
      connection.exec("CREATE DATABASE #{ database };")
      connection = PG.connect(dbname: database)
      connection.exec("CREATE TABLE ratings(id SERIAL PRIMARY KEY, score int);")
    end
  end
# end
