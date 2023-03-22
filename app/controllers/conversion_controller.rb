require_relative "../services/unit_converter/unit_converter"

class ConversionsController < ApplicationController
  def index
  end

  def convert
    query = params[:q]
    result = UnitConverterService.convert(query)

    if result
      @converted_value = result
      respond_to do |format|
        format.html { render :index, status: :ok }
        format.text { render plain: result }
      end
    else
      @error = "Invalid query"
      respond_to do |format|
        format.html { render :index, status: :bad_request }
        format.text { render plain: "Invalid query" }
      end
    end
  end
end
