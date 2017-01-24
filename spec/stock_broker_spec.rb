require "stock_broker"

describe StockBroker do

  let(:stock) { StockBroker.new }

  it "matches the format" do
    client_input = "ZNGA 1300 2.66 B,CLH15.NYM 50 56.32 B,OWW 1000 11.623 B,OGG 20 580.1 B"
    expect(stock.ease_stock(client_input)).to include "Buy : 26683 Sell : 0 ;"
  end

end
