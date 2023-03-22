require_relative "../app/services/unit_converter/units/mass/kilogram"
require_relative "../app/services/unit_converter/units/mass/pound"
require_relative "../app/services/unit_converter/units/length/meter"
require_relative "../app/services/unit_converter/units/length/foot"

UNIT_MAPPING = {
  "kg" => Kilogram,
  "kilogram" => Kilogram,
  "kilograms" => Kilogram,
  "lb" => Pound,
  "pound" => Pound,
  "pounds" => Pound,
  "m" => Meter,
  "meter" => Meter,
  "meters" => Meter,
  "ft" => Foot,
  "foot" => Foot,
  "feet" => Foot,
  "feets" => Foot,
}.freeze
