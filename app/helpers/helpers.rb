require 'sinatra/base'

class Helpers
  
  def current_user(session[:user_id])
    @user = User.find_by_id(session[:user_id])
  end
  
  def is_logged_in?(session[:user_id])
    !!session[:user_id]
  end
end