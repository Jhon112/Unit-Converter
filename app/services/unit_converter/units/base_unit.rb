class BaseUnit
  attr_reader :value

  def initialize(value = 0)
    @value = value
  end

  def to_base_unit
  end

  def from_base_unit(base_unit_value)
  end

  def counterpart
  end
end
