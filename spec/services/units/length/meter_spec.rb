require "rails_helper"
require_relative "../../../../app/services/unit_converter/units/length/meter"
require_relative "../../../../app/services/unit_converter/units/length/foot"

RSpec.describe Meter do
  let(:meter) { Meter.new(1) }

  it "converts to base unit" do
    expect(meter.to_base_unit).to eq(1)
  end

  it "converts from base unit" do
    expect(Meter.new.from_base_unit(1)).to eq(1)
  end

  it "has the correct counterpart" do
    expect(meter.counterpart).to eq(Foot)
  end
end
