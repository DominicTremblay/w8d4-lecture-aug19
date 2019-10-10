require './player'

class Game

  def initialize()
    @jedis = [Player.new('Ray'), Player.new('Kylo Ren'), Player.new('Obi Wan'), Player.new('Yoda')].shuffle!
    @round = 1
  end

  def getEnnemy(attacking)
    jedis_alive.select{|jedi| jedi != attacking}.sample
  end


  def jedis_alive
    @jedis.select{|jedi| !jedi.dead? }
  end

  def game_over
    jedis_alive.count ==   1  
  end

  def game_status
  
    puts "--------------------"
    @jedis.each{|jedi| print " #{jedi.name} HP: #{jedi.dead? ? 'Dead' : jedi.hp}"}
    puts ""
    puts "--------------------"

  end

  def run


    while !game_over do

      puts "--------------------"
      puts "     Round ##{@round}"
      puts "--------------------"

      attacking_jedi = @jedis.first
      ennemy_jedi = getEnnemy(attacking_jedi)

      attacking_jedi.attacks(ennemy_jedi)
      game_status


      @round += 1
      sleep 1

    end
  end


end