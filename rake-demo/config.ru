webserver = Proc.new {
   [
    200,
     {"content-type" => "text/html"},
     ["Hello, Rack"]
   ]
}

run webserver

#網站伺服器是無窮迴圈，持續在空轉，有資料近來就處理沒有就空轉

#127.0.0.1代表這台電腦，只有這台電腦看的到

