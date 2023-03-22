require_relative "./base_length_unit"

class Foot < BaseLengthUnit
  CONVERSION_FACTOR = 0.3048

  def to_base_unit
    @value * CONVERSION_FACTOR
  end

  def from_base_unit(base_unit_value)
    self.class.new(base_unit_value / CONVERSION_FACTOR).value
  end

  def counterpart
    Meter
  end
end
