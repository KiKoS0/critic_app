class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def index
    render html: "hello World!"
  end

end
