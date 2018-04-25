# character class
class Character
  attr_accessor :name
  attr_accessor :gender
  attr_reader :level
  attr_reader :experience

  def initialize(character_name, gender)
    @character_name = character_name
    @gender = gender
    @level = 1
    @experience = 0
  end
end

# race class
class Race < Character
  RACES = %w[Human Elf Dwarf Halfing].freeze
  def initialize(race_name, character_name, gender)
    unless RACES.include? race_name
      raise ArgumentError, "Race Name: '#{race_name}' not in #{RACES}"
    end
    @race_name = race_name
    super(character_name, gender)
  end
end
