require "rails_helper"

RSpec.describe Mass::Pound do
  let(:pound) { Mass::Pound.new(1) }

  it "converts to base unit" do
    expect(pound.to_base_unit).to eq(0.453592)
  end

  it "converts from base unit" do
    expect(Mass::Pound.new.from_base_unit(1)).to be_within(0.0001).of(2.20462)
  end

  it "has the correct counterpart" do
    expect(pound.counterpart).to eq(Mass::Kilogram)
  end
end
