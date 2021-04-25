require "sinatra"

get "/calc/bmi" do
  erb(:form)
end

post "/calc/bmi/result" do
  h = params[:height].to_f / 100
  w = params[:weight].to_f

  @bmi = (w / ( h * h )).round(2)

  erb (:result)
end
