class ReportsController < ApplicationController
  def index
    @users = User.all
  end

  def email
    User.send_report(current_user)
    redirect_to reports_index_path, notice: 'Report was successfully send.'
  end
end
