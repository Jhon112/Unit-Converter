require "rails_helper"
require_relative "../../app/services/unit_converter/unit_converter"

RSpec.describe UnitConverterService do
  describe ".convert" do
    context "when converting mass units" do
      it "converts kilograms to pounds" do
        result = UnitConverterService.convert("1 Kg in lb")
        expect(result).to be_within(0.0001).of(2.20462)
      end

      it "converts pounds to kilograms" do
        result = UnitConverterService.convert("1 lb in kilograms")
        expect(result).to be_within(0.0001).of(0.453592)
      end
    end

    context "when converting length units" do
      it "converts meters to feet" do
        result = UnitConverterService.convert("1 meter in feets")
        expect(result).to be_within(0.0001).of(3.28084)
      end

      it "converts feet to meters" do
        result = UnitConverterService.convert("1 ft in m")
        expect(result).to be_within(0.0001).of(0.3048)
      end
    end

    context "when given invalid units" do
      it "raises an error" do
        result = UnitConverterService.convert("1 meter in kg")
        expect(result).to eq(nil)
      end
    end
  end
end
