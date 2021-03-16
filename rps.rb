
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
            puts "あっち向いて..."
            puts "0(上)1(下)2(右)3(左)ー指を差す方向を決める"
            mdirection = gets.to_i
            oface = rand(4)
            direction = ["上","下","右","左"]
            puts "ホイ！"
            puts "----------------"
            puts "あなた :#{direction[mdirection]}を選択しました"
            puts "相手 :#{direction[oface]}を向きました"
            if mdirection == oface
                puts "あなたの勝ちです"
            else
                puts "じゃんけん..."
                return true
            end
        elsif myself == 3
            puts "逃亡に成功しました"
            return false
        else
            puts "あっち向いて..."
            puts "0(上)1(下)2(右)3(左)ー顔を動かす方向を決める"
            mdirection = gets.to_i
            oface = rand(4)
            direction = ["上","下","右","左"]
            puts "ホイ！"
            puts "----------------"
            puts "あなた :#{direction[mdirection]}を選択しました"
            puts "相手 :#{direction[oface]}を向きました"
            if mdirection == oface
                puts "あなたの勝ちです"
            else
                puts "じゃんけん..."
                return true
            end
              
        end
    end

    again = true

    while again
        again = janken
    end