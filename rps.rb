puts "じゃんけん..."
def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    myself = gets.to_i
    opponent = rand(3)

    waza = ["グー","チョキ","パー","逃げる"]

    puts "ホイ！"
    puts "---------------"
    puts "あなた :#{waza[myself]}を選択しました"
    if myself == 3
        puts "戦いを放棄しました"
    else
        puts "相手 :#{waza[opponent]}を出しました"
    end
    puts "---------------"

    if myself == opponent
        puts "あいこで..."
        return true
    elsif(myself == 0 && opponent == 1) || (myself == 1 && opponent == 2) || (myself == 2 && opponent == 0)
        puts "あなたの勝ちです"
        return false
    elsif myself == 3
        puts "逃亡に成功しました"
        return false
    else
        puts "あなたの負けです"
        return false
    end
end

again = true

while again
    again = janken
end