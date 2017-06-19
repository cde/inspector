require 'nokogiri'
require 'open-uri'
require 'pry'

class Inspector

  def initialize(url)
    @document        = read(url)
  end

  def read(url)
    open(url)
  end
  # Returns the whole parsed document
  def parsed
    @parsed ||= Nokogiri::HTML(@document.to_s)
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
