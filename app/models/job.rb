class Job < ActiveRecord::Base
  validates :title,
    :description,
    :contact_name,
    :contact_email, presence: true
  
  validates :salary, numericality: { greater_than: 0 }
end
