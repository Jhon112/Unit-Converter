require "rails_helper"

RSpec.describe Length::Meter do
  let(:meter) { Length::Meter.new(1) }

  it "converts to base unit" do
    expect(meter.to_base_unit).to eq(1)
  end

  it "converts from base unit" do
    expect(Length::Meter.new.from_base_unit(1)).to eq(1)
  end

  it "has the correct counterpart" do
    expect(meter.counterpart).to eq(Length::Foot)
  end
end
