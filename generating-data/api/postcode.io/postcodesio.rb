require 'HTTParty'
require 'json'

class Postcode
  include HTTParty

  attr_accessor :single_postcode, :multiple_postcodes

  base_uri 'https://api.postcodes.io'

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcode_array)
    @multiple_postcodes = JSON.parse(self.class.post("/postcodes/", body: {"postcodes": postcode_array}).body)
  end

end

pc = Postcode.new

pc.get_single_postcode("PR30SG")
pc.get_multiple_postcodes(["PR3 0SG", "M45 6GN"])

p pc.single_postcode["status"]
p pc.multiple_postcodes["status"]
