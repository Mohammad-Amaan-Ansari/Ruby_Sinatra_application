# lib/submission.rb
class Submission < ActiveRecord::Base
validates :name, presence: true, length: { minimum: 3, maximum: 10 }
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :contact, presence: true
end
