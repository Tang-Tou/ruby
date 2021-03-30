def bmi_calculator(height, weight)
  begin
    x = (height/ 100.0) 
    y = weight / (x * x) 
    y . round(2)
  rescue => exception
    "輸入的數字有問題"
  end
end
  
p bmi_calculator(160, 47)
  