#小鎮原始人數為p0，每一年人數增長percent%
#且每年會增長aug人數
#要幾年才會總人數大於等於P


def nb_year(p0, percent, aug, p)
    #把percent變成百分比)
  actual_percent = percent * 0.01
    #先設year值一開始為0 但為什麼
  year = 0  
    
    #如果是p0>=p，會得到false，所以不會執行
    #當p大於等於p0時，
    #while是看條件有無成立才決定是否執行
  
  #所以5000大於1500是成立 就會執行
  #值到1500作用到讓5000大於1500不成立 就會得到結果
  while (p >= p0)
    year = year + 1
    p0 = p0 + p0 * actual_percent + aug
  end
  #回傳year值
  return year
end
  
  puts nb_year(1500, 5, 100, 5000) #15