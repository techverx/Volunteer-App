class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
def set_recently_viewed
 cookies[:recently_viewed].to_s.split(',').each do |id|
      @recently_viewed ||= Array.new
      @recently_viewed << Film.find(id.to_i)
    end
end
end
