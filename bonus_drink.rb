class BonusDrink
 #３パターン書いたので処理時間をそれぞれコメントアウトしています。
 #問題の解答：「ビンが100本の時、149本飲める。」
  #実行時間平均=0.00230 +- 2.0E-7 [s]、ロード時間平均=0.04917 +- 0.000039 [s]、n=30
  def self.total_count_for(amount)
    addbin_old = 0 #前の処理で追加されたビン
    totalbin = amount
    loop do #追加されるビンが0個になるまでビンを加算
      addbin_new = totalbin / 3 #追加されたビンの総計
      addbin = addbin_new - addbin_old #今回の処理で追加されるビン
      totalbin =  totalbin + addbin
      if (addbin == 0)
        break
      end
      addbin_old = addbin_new
    end
    return totalbin
  end

=begin
  #実行時間平均=0.00237 +- 1.0E-7 [s]、ロード時間平均=0.04766 +- 0.000113 [s]、n=30
  def self.total_count_for(amount)
      totalbin = amount + amount / 3 #amount + n, n; amount = 3n + d
      temp = amount
      #交換していないビンが3未満になるまでtotalにnを加算
      loop do
          addbin = ((temp % 3) +(temp / 3))
          if ((addbin / 3) == 0)
              return totalbin
          end
          temp = addbin
          totalbin += (addbin / 3)
      end
  end 
=end

=begin
  #実行時間平均=0.00250 +- 0.8E-7 [s]、ロード時間平均=0.04970 +- 0.000101 [s]、n=30
  def self.total_count_for(amount)
    addbin = ((amount % 3) + (amount / 3)) #amount + n = (3n + "d) + n"
      if ((addbin / 3) == 0) #d + n = 3k???
        return amount + (amount / 3) 
      end
    return amount - (amount % 3) + self.total_count_for(addbin) #d + nに対して再帰して結果を加算。2項目でdを補正。
  end
=end
end