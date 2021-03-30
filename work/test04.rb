class Human
    #同一個方法所以不用使用實體變數也OK
    def age(age)
      if age >= 18
         18
      else
         age
      end
    end
  
  end
  me = Human.new
  p me.age(30)
  p me.age(14)
  


  class Human
    #方法1
    def age
      @age
    end
    #方法2，要讓他可以存取age所以使用實體變數
    def age=(x)
      if x > 18
        @age = 18      
      else
        @age = x
      end
    end
    
  end
  
  man = Human.new
  man.age=(30)
  puts man.age
  man.age=(14)
  puts man.age