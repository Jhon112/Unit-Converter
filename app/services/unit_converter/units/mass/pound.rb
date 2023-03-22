class Pound < BaseMassUnit
  CONVERSION_FACTOR = 0.453592

  def to_base_unit
    @value * CONVERSION_FACTOR
  end

  def from_base_unit(base_unit_value)
    self.class.new(base_unit_value / CONVERSION_FACTOR).value
  end

  def counterpart
    Kilogram
  end
end
