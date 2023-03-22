require_relative "./base_length_unit"

class Meter < BaseLengthUnit
  def to_base_unit
    @value
  end

  def from_base_unit(base_unit_value)
    self.class.new(base_unit_value).value
  end

  def counterpart
    Foot
  end
end
