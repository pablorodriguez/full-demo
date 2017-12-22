class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :validatable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable
  
  TYPES_OFF = [:local, :foreigns, :remote]
  #enum type_of: TYPES_OFF

  belongs_to :manager , class_name: "User", foreign_key: "manager_id", required: false
  validates_presence_of :name, :email
  validates :email, uniqueness: { case_sensitive: false }

  has_many :employees, class_name: "User", foreign_key: "manager_id"
  
  def is_manager?
    self.employees.any?
  end

  def self.all_less_me(user)
    User.where("id != ?", user.id).order(:name)
  end

  def self.all_managers
    ids = User.select("manager_id").where("manager_id IS NOT NULL")
    User.where("id IN (?)",ids)
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |employee|
        csv << employee.attributes.values_at(*column_names)
      end
    end
  end

  def self.send_report user
    SystemMailer.send_report(user).deliver_now
  end

end
