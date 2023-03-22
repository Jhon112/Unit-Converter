class ConversionsController < ApplicationController
  def convert
    query = params[:q]
    result = UnitConverterService.convert(query)

    if result
      render plain: result, content_type: "text/plain"
    else
      render plain: "Invalid query", content_type: "text/plain", status: :bad_request
    end
  end
end
