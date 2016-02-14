class Address < ActiveRecord::Base
  belongs_to :user
  validates :address_line_1, presence: true
  validates :address_city, presence: true
  validates :address_state, presence: true
  validates :address_zip, presence: true
  validates :recipient_address_line_1, presence: true
  validates :recipient_address_city, presence: true
  validates :recipient_address_state, presence: true
  validates :recipient_address_zip, presence: true
end
