require 'httparty'

response = HTTParty.get('https://www.bbc.co.uk/news')

puts response.message
