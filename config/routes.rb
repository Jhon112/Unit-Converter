require_relative "../app/controllers/conversion_controller"

Rails.application.routes.draw do
  get "/", to: "conversions#index"
  get "/convert", to: "conversions#convert"
end
