# == Schema Information
#
# Table name: subtours
#
#  id             :integer          not null, primary key
#  departure_date :date
#  sub_note       :text
#  tour_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Subtour < ApplicationRecord
  belongs_to :tour
end
