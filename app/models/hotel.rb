# == Schema Information
#
# Table name: hotels
#
#  id          :integer          not null, primary key
#  hotel_title :string
#  hotel_body  :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hotel < ApplicationRecord
  has_many :subhotels
  belongs_to :subtour
  accepts_nested_attributes_for :subhotels
end
