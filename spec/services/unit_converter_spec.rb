require "rails_helper"

RSpec.describe UnitConverter do
  describe ".convert" do
    context "when converting mass units" do
      it "converts kilograms to pounds" do
        result = UnitConverter.convert(1, from: Mass::Kilogram, to: Mass::Pound)
        expect(result).to be_within(0.0001).of(2.20462)
      end

      it "converts pounds to kilograms" do
        result = UnitConverter.convert(1, from: Mass::Pound, to: Mass::Kilogram)
        expect(result).to be_within(0.0001).of(0.453592)
      end
    end

    context "when converting length units" do
      it "converts meters to feet" do
        result = UnitConverter.convert(1, from: Length::Meter, to: Length::Foot)
        expect(result).to be_within(0.0001).of(3.28084)
      end

      it "converts feet to meters" do
        result = UnitConverter.convert(1, from: Length::Foot, to: Length::Meter)
        expect(result).to be_within(0.0001).of(0.3048)
      end
    end

    context "when given invalid units" do
      it "raises an error" do
        expect {
          UnitConverter.convert(1, from: Mass::Kilogram, to: Length::Meter)
        }.to raise_error(UnitConverter::IncompatibleUnitsError)
      end
    end
  end
end
