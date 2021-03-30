# 存錢功能
# 可以存錢
# 不可以存 0 元或是小於 0 元的金額（越存錢越少！）

# 領錢功能
# 可以領錢
# 不能領 0 元或是小於 0 元的金額（越領錢越多！）
# 不能領超過本身餘額

#ATM = 1  是合理常數，但功能性來說很怪

require './atm'

#RSpec提供的類別方法
#類別#類別方法 #參數/建議帶常數
RSpec.describe(ATM) do
    #RSpec提供的方法
    #context 情境 心境 文本 同功能 只是語意不同
    describe "存錢" do#做分類 沒有也不會有影響
        #方法
        it "可以存錢1" do # 他會發生可以存錢這件事情，一個句子一個描述
        #預期   #rs的方法
        #expect(1).to be 1
        #預期(1)是 1
        #expect(1).to be 2
        #預期他是2 但代入1所以壞了
        #測試個案寫在這裡
            atm = ATM.new(10)
            atm.deposit(5)
            expect(atm.balance).to be 15
            # 原型expect(atm.balance).to(be(15))
        end

        it "可以存錢2" do
            atm = ATM.new(10)
            atm.deposit(10)
            expect(atm.balance).to be 20
          end
    
          it "不可以存 0 元或是小於 0 元的金額（越存錢越少！）" do 
            #將上述中文寫成程式碼
            atm = ATM.new(10)
            atm.deposit(-5)
            expect(atm.balance).to be 10
          end
    end
    #每個it最好是expect一件事情就好，最多兩個，但需要同一方向
    describe "領錢" do

        let(:atm) { ATM.new(10) } => 寫了這個這一段describe就不用再寫atm = ATM.new(10)
    

        it "可以領錢" do 
            atm = ATM.new(10)
            money = atm.withdraw(5)
            expect(atm.balance).to be 5
            expect(money).to be 5
            #在這裡面money可以寫中文
        end
      
        it "不能領 0 元或是小於 0 元的金額" do 
            atm = ATM.new(10)
            money = atm.withdraw(-5)
            expect(atm.balance).to be 10
            expect(money).to be 0
        end
      
        it "不能領超過本身餘額" do 
            atm = ATM.new(10)
            money = atm.withdraw(20)
            expect(atm.balance).to be 10
            expect(money).to be 0
        end
            
    end
end

expect(atm.god?).to be true
expect(atm).to be_god

#問號方法才能這樣改寫

