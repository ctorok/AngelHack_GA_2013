class SessionsController < ApplicationController
  def create
   user = User.from_omniauth(env['omniauth.auth'])
   puts "$"*120
   puts user
   session[:user_id] = user.id
   redirect_to root_url, notice: "Signed in."
  end
end