class Player

  attr_accessor :hp
  attr_reader :name

  def initialize(name)
    @name =  name
    @hp = 20
    @ap = 10
  end

  def dead?
    @hp <= 0
  end

  def attacks(ennemy)
    damage = rand(@ap) + 1
    puts "#{name} attacks #{ennemy.name}"
    ennemy.takes_damage(damage)
  end
  
  def takes_damage(pts)
    puts "#{name} takes #{pts} points of damage"
    self.hp -= pts
  end


end