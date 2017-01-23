require "pagination_helper"

describe PaginationHelper do
  
  let(:helper) { PaginationHelper.new(['a','b','c','d','e','f'], 4) }

  it "match total pages" do
    expect(helper.page_count).to eq 2
  end

  it "match total items" do
    expect(helper.item_count).to be <= 8
  end

  it "total items in first page" do
    expect(helper.page_item_count(0)).to eq 4
  end

  it "total items in second page" do
    expect(helper.page_item_count(1)).to be <=4
  end

  it "total items in third page" do
    expect(helper.page_item_count(2)).not_to be > 0
  end

  it "page number of the item" do
    expect(helper.page_index(5)).to eq 1
  end

  it "page number of the item" do
    expect(helper.page_index(3)).to eq 0
  end

  it "page number of the item" do
    expect(helper.page_index(20)).to be < 0
  end

  it "page number of the item" do
    expect(helper.page_index(-10)).not_to be > 0
  end

end