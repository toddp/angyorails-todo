class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception, only: [:create, :update]
  #skip_before_action :verify_authenticity_token
  respond_to :html, :json

  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
    headers['Access-Control-Request-Method'] = '*'
  end

end
