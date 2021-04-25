require 'sinatra'

get '/cats' do
  "黑貓白貓，會呼嚕的貓就是好貓！"
end

get '/cats/:id' do
  "123"
  #上排的:id會被捕捉丟到params這個變數也可以說是hash裡
  #下排的params就會得到值
  "你好，你是第 #{params[:id]} 號的貓"
  #如果字串中包括#{}，括號中若指定了某個變數名稱，則 直譯器會嘗試取得變數值後與字串結合
  # #{} 在字串中加入資料的方法
  puts params
  puts method(:params).source_location
end



params = {key: value}