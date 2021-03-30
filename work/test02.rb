class Object
  initialize
end
# 這是預設的初始化狀況

class Animal < Object
  def walk
    puts "walk"
  end
  
  def eat 
    puts "eat"
  end
end
  
class Cat < Animal
end
  
class Dog < Animal
end
  
kitty = Cat.new
kitty.walk#實體方法 作用在實體身上 前提是要先有一個實體出來
kitty.eat 
  
lucky = Dog.new
lucky.walk
lucky.eat

p kitty.is_a?(Cat) #問是不是什麼?
p kitty.is_a?(Animal)

class Bird
  def initialize(name)
    @name = name
    #@name <-實體變數
  end
end

chuchu = Bird.new('chu')

----------

#單體方法 Singleton Method
#ruby特有，在任一物件上面做方法
def kitty.eat
  puts"yes"
end
----------

class Cat
  def fly #實體方法
  end

  def self.fly #類別方法
  end
end

kitty - Cat.new
kitty.fly #<-實體方法

----------
class ApplicationRecord < ActiveRecord::Base
end
class Book < ApplicationRecord
end

Book.all #.all類別方法
b1 = Book.find(1) #.find類別方法

puts b1.title #.title實體方法

#類別變數是所有類別共用的，包含繼承
#實體變數owner -> 實體本身

#想要在類別裡取用類別變數必須要做類別方法
#實體變數想要用就可以用

class Cat
  def hello
    #hello方法間接呼叫gossip方法
    gossip
  end

  #預設的方法都是public(公開)
  #以下都為私有方法，無法直接取用，但可以間接取用
private
  def gossip
    puts "..."
  end
  #私有方法的存在目的要執行，但不想讓人直接看到怎麼執行的
end
