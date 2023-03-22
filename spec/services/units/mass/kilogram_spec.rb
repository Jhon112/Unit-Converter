require "rails_helper"

RSpec.describe Mass::Kilogram do
  let(:kilogram) { Mass::Kilogram.new(1) }

  it "converts to base unit" do
    expect(kilogram.to_base_unit).to eq(1)
  end

  it "converts from base unit" do
    expect(Mass::Kilogram.new.from_base_unit(1)).to eq(1)
  end

  it "has the correct counterpart" do
    expect(kilogram.counterpart).to eq(Mass::Pound)
  end
end
