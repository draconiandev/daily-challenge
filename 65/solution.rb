HASHY = {
          hundered: 10000,
          fifty: 5000,
          ten: 1000,
          five: 500,
          one: 100,
          quarter: 25,
          dime: 10,
          nickel: 5,
          penny: 1,
        }

def change_for(money)
  @pennies = (money.round(2)*100).to_i
  @array = []
  loop do
    HASHY.each do |k, v|
      @a = @pennies.divmod v
      @array << [@a, k] if @a[0] == 1
      @pennies = @a[1]
    end
    # p @pennies
    break if @pennies == 0
  end
    # p @pennies
  # @array
end

p change_for 12.33

# puts "How much Money? "
# money = gets.to_f

# denom = [10000, 5000, 1000, 500, 100, 25, 10, 5, 1]
# denomAnswer = []
# money = money * 100
# i = 0
# denom.each{|a|
# denomAnswer[i] = (money / a).to_i
# money = money % denom[i]
# i = i + 1
# }
# puts denomAnswer.join(",")
