Rails.application.routes.draw do
  get "/", to: "conversions#convert"
end
