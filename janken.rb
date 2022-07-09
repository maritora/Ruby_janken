puts"あっち向いてホイおじさんが勝負を仕掛けてきた！"

class Shohai
  def initialize(name)
  @shohai = name
  end
  def shohai
   puts "あなたの#{@shohai}"
  end
end
def janken
 puts "じゃんけん。。。"
 puts "[0]グー[1]チョキ[2]パー[3]戦わない"
 player_janken = gets.to_i

#戦わない場合
 if
 player_janken == 3
 puts "また遊ぼうね！"
 return false

 elsif
 program_janken = rand(3)
 janken = ["グー","チョキ","パー"]
 puts "あなた:#{janken[player_janken]},おじさん:#{janken[program_janken]}"

#あいこの場合
  if player_janken == program_janken
  puts "あいこで"
  return true
  
#じゃんけん勝ち
  elsif (player_janken == 0 && program_janken == 1)||(player_janken == 1 && program_janken ==2)||(player_janken ==2 && program_janken ==0)
  win = Shohai.new('勝ち')
  win.shohai
  @shohai = 1
  achihoi
 #じゃんけん負け
  else
  lose = Shohai.new('負け')
  lose.shohai
  @shohai = 0
  achihoi
  end
 end
end

#あっち向いてホイ
def achihoi
puts "あっち向いて。。。"
puts "[0]上[1]右[2]下[3]左"
player_achihoi = gets.to_i
 
 if
 program_achihoi = rand(4)
 achihoi = ["上","右","下","左"]
 puts "ホイ！"
 puts "あなた:#{achihoi[player_achihoi]},おじさん:#{achihoi[program_achihoi]}"
  
  if
  player_achihoi == program_achihoi
   if
   @shohai == 1
   puts "YOU WIN!!!"
   elsif
   puts "あんたの負け"
   end
  else
  puts "もういっかい！"
  return true
  end
 end
end

 aiko = true
 while aiko
 aiko = janken
 end