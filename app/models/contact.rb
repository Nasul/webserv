class Contact < ActiveRecord::Base 
  validates :company, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end