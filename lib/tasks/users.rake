namespace :users do
  desc "Send user report to all Managers"
  task :send_report => :environment do |t, args|
    managers = User.all_managers

    managers.each do |user|
      User.send_report user
    end
  end
end