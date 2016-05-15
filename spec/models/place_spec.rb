require 'rails_helper'

RSpec.describe Place, type: :model do
  it "is created if proper name and address set" do
    place = Place.create name:"ebin", address: "kaikukuja"

    expect(place).to be_valid
    expect(Place.count).to eq(1)
  end

  it "is not created if proper name not set" do
    place = Place.create address: "kaikukuja"

    expect(place).not_to be_valid
    expect(Place.count).to eq(0)
  end

  it "is not created if proper address not set" do
    place = Place.create name:"ebin"

    expect(place).not_to be_valid
    expect(Place.count).to eq(0)
  end
end
