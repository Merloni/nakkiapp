require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is created if proper type set" do
    task = Task.create type: Type.new(name:"narikka")

    expect(task).to be_valid
    expect(Task.count).to eq(1)
  end

  it "is not created if proper type not set" do
    task = Task.create

    expect(task).not_to be_valid
    expect(Task.count).to eq(0)
  end
end
