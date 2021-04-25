require "sinatra"

get "/cats" do
  "黑貓白貓都是好貓"
end

get "/lottery" do
    "#{[*1..49].sample(5)}"
  
end

get '/lottery/:n' do
    # 隨機在畫面上印出 (1 ~49) n 個不重複數字
    n = params[:n].to_i
  
    if n > 0 and n < 50
      "#{[*1..49].sample(n)}"
    else
      "無法顯示"
    end
  end


get "/cats/:id" do
    #查資料庫
  '你好，你是第 #{params[:id]} 的貓'
end

#終端機 ruby 檔名
#得到網址(?) 依照get這個辦法修改網址可以得到上述資料