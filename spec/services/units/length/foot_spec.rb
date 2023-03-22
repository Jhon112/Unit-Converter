require "rails_helper"
require_relative "../../../../app/services/unit_converter/units/length/meter"
require_relative "../../../../app/services/unit_converter/units/length/foot"

RSpec.describe Foot do
  let(:foot) { Foot.new(1) }

  it "converts to base unit" do
    expect(foot.to_base_unit).to eq(0.3048)
  end

  it "converts from base unit" do
    expect(Foot.new.from_base_unit(1)).to be_within(0.0001).of(3.28084)
  end

  it "has the correct counterpart" do
    expect(foot.counterpart).to eq(Meter)
  end
end
