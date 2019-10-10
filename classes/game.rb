require './player'

class Game

  def initialize
    @jedis = [Player.new("Skywalker"), Player.new("Yoda"), Player.new("Anakin")].shuffle
    @round = 1
  end

  def game_over
    @jedis.select{|jedi| jedi.dead? }.count > 1
  end

  def alive_jedis
    @jedis.select{|jedi| !jedi.dead?}
  end

  def get_ennemy(attacking_jedi)
    alive_jedis.select{|jedi| jedi != attacking_jedi}.sample
  end

  def run
    while (!game_over) do

      puts '-----------------'
      puts "ROUND: #{@round}"

      attacking_jedi = @jedis.first
      ennemy_jedi = get_ennemy(attacking_jedi)

      attacking_jedi.attacks(ennemy_jedi)

      puts "------- STATUS -----------"
      @jedis.each{|jedi| puts "Name: #{jedi.name} HP: #{jedi.dead? ? "DEAD" : jedi.hp}"}


      @round+=1
      @jedis.rotate!
      sleep 1
    end

  end

end