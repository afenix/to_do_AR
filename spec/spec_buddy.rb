require("sinatra/activerecord")
require("rspec")
require("pg")
require("task")
require("pry")




RSpec.configure do |config|
  config.after(:each) do
    Task.all().each() do |task|
      task.destroy()
    end
  end
end
