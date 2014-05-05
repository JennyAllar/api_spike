require 'giphy'
require 'json'

response = Faraday.get 'http://api.giphy.com/v1/gifs/search?q=no&api_key=dc6zaTOxFJmzC'
json_data = response.body

image_data = JSON.parse(json_data)
p image_data

#Giphy::Configuration.configure do |config|
#  config.version = THE_API_VERSION
#  config.api_key = YOUR_API_KEY
#end
#
#
#response = Faraday.get 'http://www.reddit.com/r/aww/.json'
#json_data = response.body
#
#image_data = JSON.parse(json_data)["data"]["children"].select do |data|
#  data["data"]["url"].include?("http://i.imgur.com")
#end
#
#urls = image_data.map { |data| data["data"]["url"] }
#
#puts urls