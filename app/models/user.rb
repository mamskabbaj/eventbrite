class User < ApplicationRecord
has_many :events, through: :attendances
validates :email, presence: true
#validates :encrypted_password, presence: true
validates :description, presence: true
validates :first_name, presence: true
validates :last_name, presence: true
after_create :welcome_send

def welcome_send
  puts "ghjkl"
  UserMailer.welcome_email(self).deliver_now
end
end

