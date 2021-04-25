#這是個另外安裝的ruby web框架
require "sinatra"

#get是sinatra裡的方法，得到/就執行，/這個是路徑而非檔名
get "/" do
    "Home!"
end

get "/hell" do
    "Hello,world"
end