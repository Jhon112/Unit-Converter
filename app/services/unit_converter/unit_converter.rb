require_relative "../../../config/unit_mapping.rb"

class UnitConverter
  def self.convert(query)
    source_unit, target_unit = parse_query(query)

    return nil unless source_unit && target_unit && source_unit.class == target_unit.counterpart

    target_unit.from_base_unit(source_unit.to_base_unit)
  end

  private

  def self.parse_query(query)
    matches = query.strip.match(/(\d+(?:\.\d+)?)\s*([a-zA-Z]+)\s*in\s*([a-zA-Z]+)/)

    return [nil, nil] unless matches

    value, source_unit_name, target_unit_name = map_matches(matches)

    source_unit = unit_from_name(source_unit_name)&.new(value)
    target_unit = unit_from_name(target_unit_name)&.new

    [source_unit, target_unit]
  end

  def self.map_matches(matches)
    [matches[1].to_f, matches[2], matches[3]]
  end

  def self.unit_from_name(name)
    normalized_name = name.downcase.strip
    UNIT_MAPPING[normalized_name]
  end
end
