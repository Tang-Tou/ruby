class Bike
  # 初始化的原因是要讓他一開始就表示他使用了30分鐘，後續的會被定義成其他值
  def initialize
    @time = 30
  end 
  def time(time)
    @time = time
  end

  def cost
    if @time <= 30
      return 5
    end

    if @time > 30 && @time < 240
      @cost = 5 + ((@time - 30) / 30.0 * 10 ).round
    elsif @time >= 240 && @time < 480
      @cost = 5 + 70 + (((@time - 240) / 30.0).ceil * 20 ).round
    else
      @cost = 5 + 70 + 160 + (((@time - 480) / 30.0).ceil * 40 ).round
    end
      
    @cost
  end

  def time_nonuser(time_nonuser)
    @time_nonuser = time_nonuser
    p @time_nonuser
  end

  # 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元

  def cost_nonuser
    if @time_nonuser < 240
      @cost_nonuser = ((@time_nonuser /30.0).ceil * 10).round
    elsif @time_nonuser >= 240 && @time_nonuser < 480
      @cost_nonuser = 80 + (((@time_nonuser - 240) /30.0).ceil * 20 ).round
    end
    @cost_nonuser
  end
end


