class ATM
  def initialize(money)
    @balance = money
  end
  
  def withdraw(money)
    @balance = @balance - money
    #@balance - money 錯ㄉ
  end
  
  def deposit(money)
    @balance = @balance + money
    #@balance + money 錯ㄉ
  end
  
  def balance
    @balance
  end
end
  
atm = ATM.new(10)
  # 實體被new的時候只會做initailize的事情，其他實體方法並不會作用
  
  # 
puts atm.withdraw(5)
  # puts atm.balance  # 印出 5
  
puts atm.deposit(10)
  # puts atm.balance  # 印出 15
  
  