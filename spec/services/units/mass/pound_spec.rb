require "rails_helper"
require_relative "../../../../app/services/unit_converter/units/mass/kilogram"
require_relative "../../../../app/services/unit_converter/units/mass/pound"

RSpec.describe Pound do
  let(:pound) { Pound.new(1) }

  it "converts to base unit" do
    expect(pound.to_base_unit).to eq(0.453592)
  end

  it "converts from base unit" do
    expect(Pound.new.from_base_unit(1)).to be_within(0.0001).of(2.20462)
  end

  it "has the correct counterpart" do
    expect(pound.counterpart).to eq(Kilogram)
  end
end
