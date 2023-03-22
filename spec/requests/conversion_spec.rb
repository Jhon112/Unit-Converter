require "rails_helper"
require_relative "../../app/controllers/conversion_controller"

RSpec.describe "Conversions", type: :request do
  it "converts valid input (kg to lb)" do
    get "/convert", params: { q: "2kg in lb" }
    expect(response).to have_http_status(:success)
    expect(response.body).to include("4.409248840367555")
  end

  it "converts valid input (feet to meters)" do
    get "/convert", params: { q: "20 feet in meters" }
    expect(response).to have_http_status(:success)
    expect(response.body).to include("6.096")
  end

  it "does not convert different types of unit (kg to meters)" do
    get "/convert", params: { q: "2 kg in meters" }
    expect(response).to have_http_status(:bad_request)
    expect(response.body).to include("Invalid query")
  end

  it "handles invalid input" do
    get "/convert", params: { q: "hello" }
    expect(response).to have_http_status(:bad_request)
    expect(response.body).to include("Invalid query")
  end
end
