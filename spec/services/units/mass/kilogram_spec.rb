require "rails_helper"
require_relative "../../../../app/services/unit_converter/units/mass/kilogram"
require_relative "../../../../app/services/unit_converter/units/mass/pound"

RSpec.describe Kilogram do
  let(:kilogram) { Kilogram.new(1) }

  it "converts to base unit" do
    expect(kilogram.to_base_unit).to eq(1)
  end

  it "converts from base unit" do
    expect(Kilogram.new.from_base_unit(1)).to eq(1)
  end

  it "has the correct counterpart" do
    expect(kilogram.counterpart).to eq(Pound)
  end
end
