require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status postcode
    postcode["status"]
  end

  def get_single_result postcode
    postcode["result"]
  end

  def get_single_post postcode
    self.get_single_result(postcode)["postcode"].gsub(' ','')
  end

  def get_single_quality postcode
    self.get_single_result(postcode)["quality"]
  end

  def get_single_eastings postcode
    self.get_single_result(postcode)["eastings"]
  end

  def get_single_northings postcode
    self.get_single_result(postcode)["northings"]
  end

  def get_single_country postcode
    self.get_single_result(postcode)["country"]
  end

  def get_single_nhs postcode
    self.get_single_result(postcode)["nhs_ha"]
  end

  def get_single_longitude postcode
    self.get_single_result(postcode)["longitude"]
  end

  def get_single_latitude postcode
    self.get_single_result(postcode)["latitude"]
  end

  def get_single_parliamentary_constituency postcode
    self.get_single_result(postcode)["parliamentary_constituency"]
  end

  def get_single_european_electoral_region postcode
    self.get_single_result(postcode)["european_electoral_region"]
  end

  def get_single_primary_care_trust postcode
    self.get_single_result(postcode)["primary_care_trust"]
  end

  def get_single_region postcode
    self.get_single_result(postcode)["region"]
  end

  def get_single_parish postcode
    self.get_single_result(postcode)["parish"]
  end

  def get_single_lsoa postcode
    self.get_single_result(postcode)["lsoa"]
  end

  def get_single_msoa postcode
    self.get_single_result(postcode)["msoa"]
  end

  def get_single_admin_district postcode
    self.get_single_result(postcode)["admin_district"]
  end

  def get_single_incode postcode
    self.get_single_result(postcode)["incode"]
  end

  # Multiple methods

  def get_multiple_results(postcodes, index)
    postcodes["result"][index]
  end

  def get_multiple_result(postcodes, index)
    self.get_multiple_results(postcodes, index)["result"]
  end

  def get_multiple_query(postcodes, index)
    self.get_multiple_results(postcodes, index)["query"]
  end

  def get_multiple_postcode(postcodes, index)
    self.get_multiple_result(postcodes, index)["postcode"].gsub(' ','')
  end


  def get_multiple_quality(postcodes, index)
    self.get_multiple_result(postcodes, index)["quality"]
  end

  def get_multiple_easting(postcodes, index)
    self.get_multiple_result(postcodes, index)["eastings"]
  end

  def get_multiple_northing(postcodes, index)
    self.get_multiple_result(postcodes, index)["northings"]
  end

  def get_multiple_country(postcodes, index)
    self.get_multiple_result(postcodes, index)["country"]
  end

  def get_multiple_NHS(postcodes, index)
    self.get_multiple_result(postcodes, index)["nhs_ha"]
  end

  def get_multiple_longitude(postcodes, index)
    self.get_multiple_result(postcodes, index)["longitude"]
  end

  def get_multiple_latitude(postcodes, index)
    self.get_multiple_result(postcodes, index)["latitude"]
  end

  def get_multiple_constituency(postcodes, index)
    self.get_multiple_result(postcodes, index)["parliamentary_constituency"]
  end

  def get_multiple_eer(postcodes, index)
    self.get_multiple_result(postcodes, index)["european_electoral_region"]
  end

  def get_multiple_pct(postcodes, index)
    self.get_multiple_result(postcodes, index)["primary_care_trust"]
  end

  def get_multiple_region(postcodes, index)
    self.get_multiple_result(postcodes, index)["region"]
  end

  def get_multiple_parish(postcodes, index)
    self.get_multiple_result(postcodes, index)["parish"]
  end

  def get_multiple_lsoa(postcodes, index)
    self.get_multiple_result(postcodes, index)["lsoa"]
  end

  def get_multiple_msoa(postcodes, index)
    self.get_multiple_result(postcodes, index)["msoa"]
  end

  def get_multiple_admin_district(postcodes, index)
    self.get_multiple_result(postcodes, index)["admin_district"]
  end

  def get_multiple_incode(postcodes, index)
    self.get_multiple_result(postcodes, index)["incode"]
  end

end
