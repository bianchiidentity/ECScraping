namespace :greeting do
  desc "Generate greeting"

  task :hello => :environment do
    puts "Hello World from rake task"
  end

  task :bye => :environment do
    puts "Good Bye from rake task"
  end
end