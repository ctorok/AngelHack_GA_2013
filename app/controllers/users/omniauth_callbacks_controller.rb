class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def twitter
    #@user = User.from_omniauth(request.env["omniauth.auth"])

    omni = request.env["omniauth.auth"]
    authentication = User.find_by_provider_and_uid(omni['provider'], omni['uid'])
    
    if authentication
      flash[:notice] = "Logged in Successfully"
      sign_in_and_redirect User.find(authentication.user_id)
    elseif current_user
      token = omni['credentials'].token
      token_secret = omni['credentials'].secret
 
      current_user.authentications.create!(:provider => omni['provider'], :uid => omni['uid'], :token => token, :token_secret => token_secret)
      flash[:notice] = "Authentication successful."
      sign_in_and_redirect current_user
    else
      user = User.new
      user.apply_omniauth(omni)
     
      if user.save
        flash[:notice] = "Logged in."
        sign_in_and_redirect User.find(user.id)
      else
        session[:omniauth] = omni.except('extra')
        redirect_to new_user_registration_path
      end

      session[:omniauth] = omni.except('extra')
    end  

    # if @user.persisted?
    #   sign_in_and_redirect @user, :event => authentication
    #   set_flash_message(:notice, :success) if is_navigational_format?
    # else
    #   session[:user_id] = user.id
    #   redirect_to new_user_registration_url
    # end
  end
end