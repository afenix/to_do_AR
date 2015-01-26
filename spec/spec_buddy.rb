require("rspec")
require("pg")
require("task")
require("pry")


RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM tasks *;")
  end
end
