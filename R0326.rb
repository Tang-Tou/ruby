def padding_zero(n, m = 6)
  
    "#{"0" * m }#{n}"[-m, m]
                    # 從m數取m個字   
    
  end
  
  puts padding_zero(2)     # 印出 000002
  puts padding_zero(12)    # 印出 000012
  puts padding_zero(12, 8) # 印出 00000012