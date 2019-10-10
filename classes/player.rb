class Player

  # attr_reader :name
  # attr_writer :name
  attr_accessor :name
  attr_reader :ap
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 20
    @ap = 10
  end

  # getter
  def name
    @name
  end

  #setter
  def name=(name)
    @name=name
  end

  def dead?
    @hp <= 0
  end

  def attacks(ennemy)
    damage = rand(@ap) + 1
    puts "#{name} is attacking #{ennemy.name}"
    puts "#{ennemy.name} is taking #{damage} points of damage"
    ennemy.hp -= damage
  end

end