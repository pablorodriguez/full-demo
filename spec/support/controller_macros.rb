module ControllerMacros
  def login_as_manager
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = FactoryGirl.create(:user)
      @manager = FactoryGirl.create(:user,manager_id: @user.id)
      sign_in @manager
    end
  end

  def login_as_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @use = FactoryGirl.create(:user)
      sign_in @user
    end
  end
end