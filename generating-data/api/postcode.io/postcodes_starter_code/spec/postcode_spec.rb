require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode('NW35NB') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status(@response)).to eq 200
    end

    it "should have a results hash" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(Hash)
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.get_single_postcode(@response).length).to be_between(5,7)
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.get_single_result(@response)).to be_between(1,9)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(Integer)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(Integer)
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.get_single_result(@response)).to eq("England").or eq("Scotland").or eq("Wales").or eq("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(Float)

    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(Float)

    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a region string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a parish string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a lsoa string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a msoa string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)

    end

    it "should return a incode string of three-four characters" do
      expect(@postcodesio.get_single_result(@response)).to be_kind_of(String)
      expect(@postcodesio.get_single_result(@response).length).to be_between(3,4)
    end

  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes(['NW35NB','CT203QJ']) #Add in array of postcodes
      p @response
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status(@response)).to eq 200
    end

    it "should return the first query as the first postcode in the response" do
      expect(@postcodesio.get_multiple_query(@response,0)).to eq("NW35NB")
    end

    it "should return the second query as the second postcode in the response" do
      expect(@postcodesio.get_multiple_query(@response,0)).to eq("CT203QJ")
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of(Hash)
      expect(@postcodesio.get_multiple_results(@response,0)).to be_kind_of(Hash)

    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.get_multiple_postcode(@response,0)).length).to be_between(5,7)
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.get_multiple_postcode(@response,0)).to be_between(1,9)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_multiple_easting(@response,0)).to be_kind_of(Integer)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_multiple_(@response,0)).to be_kind_of(Integer)
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@postcodesio.get_multiple_(@response,0)).to eq("England").or eq("Scotland").or eq("Wales").or eq("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_multiple_NHS(@response,0)).to be_kind_of(String)
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_multiple_longitude(@response,0)).to be_kind_of(Float)
    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_multiple_latitude(@response,0)).to be_kind_of(Float)
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_multiple_constituency(@response,0)).to be_kind_of(String)
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_multiple_eer(@response,0)).to be_kind_of(String)
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_multiple_pct(@response,0)).to be_kind_of(String)
    end

    it "should return a region string" do
      expect(@postcodesio.get_multiple_region(@response,0)).to be_kind_of(String)
    end

    it "should return a parish string" do
      expect(@postcodesio.get_multiple_parish(@response,0)).to be_kind_of(String)
    end

    it "should return a lsoa string" do
      expect(@postcodesio.get_multiple_lsoa(@response,0)).to be_kind_of(String)
    end

    it "should return a msoa string" do
      expect(@postcodesio.get_multiple_msoa(@response,0)).to be_kind_of(String)
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.get_multiple_admin_district(@response,0)).to be_kind_of(String)
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.get_multiple_incode(@response,0)).to be_kind_of(String)
      expect(@postcodesio.get_multiple_incode(@response,0).length).to be_between(3,4)
    end

  end


end
