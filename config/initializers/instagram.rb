require "instagram"
   Instagram.configure do |config|
   config.access_token = ENV["ACCESS_TOKEN"]
end
