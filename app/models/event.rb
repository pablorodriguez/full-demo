class Event < ApplicationRecord

  belongs_to :caller, class_name: "User", foreign_key: "caller_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

  validates_presence_of :data, :duration, :topic

  mount_uploader :audio, AudioUploader
end
