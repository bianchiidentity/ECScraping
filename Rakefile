# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

ECScraping::Application.load_tasks

desc'listpage.rb'
task :listpage do
  open('app/models/scraping_from_all.rb'){|f|
    f.write('Hello Rake world.')
  }
end
