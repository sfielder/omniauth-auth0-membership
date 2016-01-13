class ProfileController < SecuredController
  def show
    @user = session[:userinfo]
  end
end
