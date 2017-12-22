module ControllerMacros

  def login(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    use = FactoryGirl.create(:user) unless user
    sign_in user
  end
  
end