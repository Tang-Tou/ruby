class ATM
    def initialize(amount)
        @amount = amount
    end 

    def deposit(money)
        if money > 0
            @amount = @amount + money
        end
    end

    def withdraw(money)
        if money > 0 && money <= @amount
            @amount = @amount - money
            return money
        else
            return 0
        end
    end

    def balance 
        @amount
    end
end

重構
class ATM
    attr_reader :balance
  
    def initialize(balance)
      @balance = balance
    end
  
    def deposit(money)
      @balance += money if money > 0
    end
  
    def withdraw(money)
      if money > 0 and enough?(money)
        @balance = @balance - money
        return money
      else
        return 0
      end
    end
  
    private
    def enough?(money)
      money <= @balance
    end
  end

