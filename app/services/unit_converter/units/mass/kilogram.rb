require_relative "./base_mass_unit.rb"

class Kilogram < BaseMassUnit
  def to_base_unit
    @value
  end

  def from_base_unit(base_unit_value)
    self.class.new(base_unit_value).value
  end

  def counterpart
    Pound
  end
end
