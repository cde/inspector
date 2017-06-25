require 'nokogiri'
require 'faraday'
require 'pry'

class Inspector

  def initialize(url, coin="eth_usd")
    @url = url
    @coin = coin
    @document = response.body
  end

  def connection
    Faraday.new(@url)
  end

  def response
    connection.get("/exchange/#{@coin}")
  end
  # Returns the whole parsed document
  def parsed
    @parsed ||= Nokogiri::HTML(@document)
  end

  def inspect
    prices = {
      provider: "https://btc-e.com",
      raw_request: "https://btc-e.com/exchange/eth_usd",
      raw_response: @document
    }
    #
    # parsed.css("").each do  |currency|
    #   puts currency
    # end
  end
end
