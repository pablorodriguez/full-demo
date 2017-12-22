class SystemMailer < ApplicationMailer
  layout "mailer"

  def send_report user
    subject = "Employees Daily Report"
    @users = User.all
    mail(:from=>"supoprt@upstack.com",:to => user.email,:subject => subject) do |format|
      #format.text
      format.html
    end
  end

end
