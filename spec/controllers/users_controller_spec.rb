require 'rails_helper'
RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) {
    {
      name: "Diego Maradona",
      email: "diego@maradona.com",
      type_of: "remote"
    }
  }

  let(:in_valid_attributes) {
    {
      name: "Washington",
      type_of: "remote"
    }
  }

  before(:each) do
    @manager = FactoryGirl.create(:user)
    @user = FactoryGirl.create(:user,manager_id: @manager.id)
    sign_in @manager
  end

  describe "REST actions" do
    it "index" do
      get :index
      expect(assigns(:users)).to eq(User.all)
      expect(assigns(:users).size).to eq(2)
    end

    it "show" do
      get :show, params: {:id => @user.to_param}
      expect(assigns(:user)).to eq(@user)
    end

    it "assigns a new university as @university" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end

    it "edit" do
      get :edit, params: {:id => @user.to_param}
      expect(assigns(:user)).to eq(@user)
    end

    it "create a valid user" do
      expect {
        post :create, params: {:user => valid_attributes}
      }.to change(User, :count).by(1)
    end

    it "create a in valid user" do
      expect {
        post :create, params: {:user => in_valid_attributes}
      }.to change(User, :count).by(0)
    end

  end
end