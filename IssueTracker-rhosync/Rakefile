begin
  require 'vendor/rhosync/lib/rhosync/tasks'
  require 'vendor/rhosync/lib/rhosync'
rescue LoadError
  require 'rhosync/tasks'
  require 'rhosync'
end

ROOT_PATH = File.expand_path(File.dirname(__FILE__))

begin
  require 'resque/tasks'
  task "resque:setup" do
    require 'application'
  end
rescue LoadError
  puts "Resque not available. Install it with: "
  puts "gem install resque\n\n"
end