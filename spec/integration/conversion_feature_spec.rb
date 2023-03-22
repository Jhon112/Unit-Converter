require "rails_helper"

RSpec.describe "Conversions", type: :request do
  describe "GET /" do
    it "displays a form to input a query" do
      get "/"
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Enter a query in the format")
    end
  end

  describe "GET /convert" do
    context "with valid input" do
      it "displays the conversion result" do
        get "/convert", params: { q: "2kg in lb" }
        expect(response).to have_http_status(:success)
        expect(response.body).to include("Converted value:")
        expect(response.body).to include("4.409248840367555")
      end
    end

    context "with invalid input" do
      it "displays an error message" do
        get "/convert", params: { q: "hello" }
        expect(response).to have_http_status(:bad_request)
        expect(response.body).to include("Invalid query")
      end
    end
  end
end
