require "rails_helper"

RSpec.describe Length::Foot do
  let(:foot) { Length::Foot.new(1) }

  it "converts to base unit" do
    expect(foot.to_base_unit).to eq(0.3048)
  end

  it "converts from base unit" do
    expect(Length::Foot.new.from_base_unit(1)).to be_within(0.0001).of(3.28084)
  end

  it "has the correct counterpart" do
    expect(foot.counterpart).to eq(Length::Meter)
  end
end
