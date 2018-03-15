desc '練習用のタスクです'
task :hello_world do
    puts 'Hello, world!'
end

namespace :test do
    require 'rake/testtask'

    Rake::TestTask.new do |t|
        t.pattern = 'tests/**/*_test.rb'
    end
end

task default: :hello_world