require 'open-uri'
require 'mechanize'

class Pgi

  ################################################ POLLEN_GRAINS_INDEX ##############################################
  # BASE_URL = 'http://www.claritin.com/weatherpollenservice/weatherpollenservice.svc/getforecast/'
  BASE_URL = 'http://www.claritin.com/webservice/allergyforecast.php?zip='
  # Allergy Forecast - Pollen Count from claritin as it gives forecast per daily basis.
  # so updating it every 30 minutes
  THRESHOLD = 1.8e+6

  attr_accessor :pgi

  #Fixme: either api has been changed or some other reason this code is not working.

  def initialize(zipcode)
    # agent = Mechanize.new
    # output = agent.get("#{Pgi::BASE_URL}#{zipcode}").body
    # response = JSON.parse(eval(output))
    response = JSON.parse(open("#{BASE_URL}#{zipcode}").read)
    # response = eval(pgi_result_set)
    if response['pollenForecast'].nil?
      @pgi = 0
    else
      @pgi = response['pollenForecast']['forecast'].average
    end
  rescue Exception => e
    Rails.logger.info e.message
    Rails.logger.info e.backtrace
    @pgi = 0
  end

end

