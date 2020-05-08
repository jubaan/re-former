class User < ApplicationRecord
  validates_length_of :name, within: 3..20, too_long: ': pick a shorter name', too_short: ': pick a longer name'
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :pasword, presence: true
end
