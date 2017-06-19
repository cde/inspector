require "rspec"
require_relative "../lib/inspector"
describe Inspector do
  let(:doc) { "https://btc-e.com/exchange/eth_usd" }
  let(:parser) { Inspector.new(doc) }
  describe "#parsed" do
    it "should have a Nokogiri::HTML::Document as parsed" do
      expect(parser.parsed.class).to eq(Nokogiri::HTML::Document)
    end
  end

  describe "#inspect" do
    it "should have a Nokogiri::HTML::Document as parsed" do
      expect(parser.inspect).to eq({id: 1})
    end
  end
end
