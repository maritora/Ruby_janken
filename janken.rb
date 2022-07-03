puts"あっち向いてホイおじさんが勝負を仕掛けてきた！"

def janken
 puts "じゃんけん。。。"
 puts "[0]グー[1]チョキ[2]パー[3]戦わない"
 player_janken = gets.to_i

#戦わない場合
 if
  player_janken == 3
  puts "また遊ぼうね！"

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
  puts "じゃんけんに勝った！"
  return @jankenwin_achihoi
  
 #じゃんけん負け
  else
  puts "じゃんけんに負けた..."
  return @jankenlose_achihoi
 
  end
 end
end
  
aiko = true
while aiko
aiko = janken
end
 
#あっち向いてホイ
def jankenwin_achihoi
puts "あっち向いて。。。"
puts "[0]上[1]右[2]下[3]左"
player_achihoi = gets.to_i
 
 if
 program_achihoi = rand(4)
 jankenwin_achihoi = ["上","右","下","左"]
 puts "ホイ！"
 puts "あなた:#{jankenwin_achihoi[player_achihoi]},おじさん:#{jankenwin_achihoi[program_achihoi]}"

  if
  player_achihoi == program_achihoi
  puts "YOU WIN！！"
 
  else
  puts "もういっかい！"
  true
  end
 end
end

jankenwin_achihoi
 
next_achihoi1 = true
loop do
 if
 next_achihoi1 = janken
 else
 break
 end
 end

def jankenlose_achihoi
puts "あっち向いて。。。"
puts "[0]上[1]右[2]下[3]左"
player_achihoi = gets.to_i
 
 if
 program_achihoi = rand(4)
 jankenlose_achihoi = ["上","右","下","左"]
 puts "ホイ！"
 puts "あなた:#{jankenlose_achihoi[player_achihoi]},おじさん:#{jankenlose_achihoi[program_achihoi]}"

  if
  player_achihoi == program_achihoi
  puts "あんたの負け"
 
  else
  puts "もういっかい！"
  true
  end
 end
end

jankenlose_achihoi 

next_achihoi2 = true
loop do
 if
 next_achihoi2 = janken
 else
 break
 end
 end

