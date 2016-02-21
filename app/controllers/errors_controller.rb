class ErrorsController < ApplicationController
  # 404 not found page
  def not_found
    render :status => 404
  end
  # 500 server error page
  def server_error
    render :status => 500
  end
end
