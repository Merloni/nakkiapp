require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is created if proper name and place set" do
    event = Event.create name:"ebin", place: Place.new(name: "Klusder")

    expect(event).to be_valid
    expect(Event.count).to eq(1)
  end

  it "is not created if proper name not set" do
    event = Event.create place: Place.new(name: "Klusder")

    expect(event).not_to be_valid
    expect(Event.count).to eq(0)
  end

  it "is not created if proper place not set" do
    event = Event.create name:"ebin"

    expect(event).not_to be_valid
    expect(Event.count).to eq(0)
  end
end
