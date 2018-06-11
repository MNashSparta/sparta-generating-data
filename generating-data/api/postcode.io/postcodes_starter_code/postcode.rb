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

  def get_single_postcode postcode
    postcode.get_single_result["postcode"].gsub(' ','')
  end

  def get_single_quality postcode
    postcode.get_single_result["quality"]
  end

  def get_single_eastings postcode
    postcode.get_single_result["eastings"]
  end

  def get_single_northings postcode
    postcode.get_single_result["northings"]
  end

  def get_single_country postcode
    postcode.get_single_result["country"]
  end

  def get_single_nhs postcode
    postcode.get_single_result["nhs_ha"]
  end

  def get_single_longitude postcode
    postcode.get_single_result["longitude"]
  end

  def get_single_latitude postcode
    postcode.get_single_result["latitude"]
  end

  def get_single_parliamentary_constituency postcode
    postcode.get_single_result["parliamentary_constituency"]
  end

  def get_single_european_electoral_region postcode
    postcode.get_single_result["european_electoral_region"]
  end

  def get_single_primary_care_trust postcode
    postcode.get_single_result["primary_care_trust"]
  end

  def get_single_region postcode
    postcode.get_single_result["region"]
  end

  def get_single_parish postcode
    postcode.get_single_result["parish"]
  end

  def get_single_lsoa postcode
    postcode.get_single_result["lsoa"]
  end

  def get_single_msoa postcode
    postcode.get_single_result["msoa"]
  end

  def get_single_admin_district postcode
    postcode.get_single_result["admin_district"]
  end

  def get_single_incode postcode
    postcode.get_single_result["incode"]
  end

  # Multiple methods

  def get_multiple_results(postcodes, index)
    postcodes["result"][index]
  end

  def get_multiple_result(postcodes, index)
    postcodes.get_multiple_results["result"]
  end

  def get_multiple_query(postcodes, index)
    postcodes.get_multiple_results["query"]
  end

  def get_multiple_postcode(postcodes, index)
    postcodes.get_multiple_result["postcode"].gsub(' ','')
  end


  def get_multiple_quality(postcodes, index)
    postcodes.get_multiple_result["quality"]
  end

  def get_multiple_easting(postcodes, index)
    postcodes.get_multiple_result["easting"]
  end

  def get_multiple_northing(postcodes, index)
    postcodes.get_multiple_result["northing"]
  end

  def get_multiple_country(postcodes, index)
    postcodes.get_multiple_result["country"]
  end

  def get_multiple_NHS(postcodes, index)
    postcodes.get_multiple_result["nhs_ha"]
  end

  def get_multiple_longitude(postcodes, index)
    postcodes.get_multiple_result["longitude"]
  end

  def get_multiple_latitude(postcodes, index)
    postcodes.get_multiple_result["latitude"]
  end

  def get_multiple_constituency(postcodes, index)
    postcodes.get_multiple_result["parliamentary_constituency"]
  end

  def get_multiple_eer(postcodes, index)
    postcodes.get_multiple_result["european_electoral_region"]
  end

  def get_multiple_pct(postcodes, index)
    postcodes.get_multiple_result["primary_care_trust"]
  end

  def get_multiple_region(postcodes, index)
    postcodes.get_multiple_result["region"]
  end

  def get_multiple_parish(postcodes, index)
    postcodes.get_multiple_result["parish"]
  end

  def get_multiple_lsoa(postcodes, index)
    postcodes.get_multiple_result["lsoa"]
  end

  def get_multiple_msoa(postcodes, index)
    postcodes.get_multiple_result["msoa"]
  end

  def get_multiple_admin_district(postcodes, index)
    postcodes.get_multiple_result["admin_district"]
  end

  def get_multiple_incode(postcodes, index)
    postcodes.get_multiple_result["incode"]
  end

end
