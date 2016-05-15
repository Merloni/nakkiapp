require 'rails_helper'

RSpec.describe Type, type: :model do
  it "is created if proper name set" do
    type = Type.create name:"ebin"

    expect(type).to be_valid
    expect(Type.count).to eq(1)
  end

  it "is not created if proper name not set" do
    type = Type.create

    expect(type).not_to be_valid
    expect(Type.count).to eq(0)
  end
end
