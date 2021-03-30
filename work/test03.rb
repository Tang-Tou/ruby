# a = 165634
# b = a.to_s.chars
# b.sum

# puts b 

# # 第一題
# # 規則：
# #
# # 16 = 1 + 6 = 7
# #
# # 942 = 9 + 4 + 2 = 15  
# #     = 1 + 5 = 6
# #
# # 132189 = 1 + 3 + 2 + 1 + 8 + 9 = 24
# #        = 2 + 4 = 6 
# #
# # 493193 = 4 + 9 + 3 + 1 + 9 + 3 = 29
# #        = 2 + 9 = 11
# #        = 1 + 1 = 2
# def number_root(n)
  
#   if n >= 10
#     return number_root(n.digits.sum)
#     # recursive遞迴
#     # n.to_s.split('')
#   else
#     return n  
#   end
# end

# def number_root(n)
#   n >= 10? number_root(n.digits.sum) : n
# end


# if只會做一次

def number_root(n)
  total = n.to_s.chars.map{|x| x.to_i}.sum

  while total >= 10
    total = total.to_s.chars.map{|x| x.to_i}.sum
  end
  total
end
  
puts number_root(16)      # 印出 7
puts number_root(942)     # 印出 6
puts number_root(132189)  # 印出 6
puts number_root(493193)  # 印出 2
  
# 第二題
#
# 規則：同樣的數字最多只能出現 N 次
#
# 範例：
# [1, 2, 3, 1, 2, 2, 2]，如果 N = 2 表示同樣的數字最多只能出現 2 次
# 所以會得到 [1, 2, 3, 1, 2]
  
def remove_extra_number(list, n)
# 實作內容請寫在這裡
end
p '---------'
p remove_extra_number([1, 1, 1, 1], 1)          
# 印出 [1]
p remove_extra_number([1, 1, 1, 1], 2)          
# 印出 [1, 1]
p remove_extra_number([20, 37, 20, 21], 1)      
# 印出 [20, 37, 21]
p remove_extra_number([1, 2, 3, 1, 2, 2, 2], 2) 
# 印出 [1, 2, 3, 1, 2]
p remove_extra_number([1, 2, 3, 4], 0)          
# 印出 [1, 2, 3, 4]

  