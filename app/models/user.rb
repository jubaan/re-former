class User < ApplicationRecord
  validates_length_of :username, within: 3..20, too_long: ': pick a shorter name', too_short: ': pick a longer name'
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, presence: true
end
