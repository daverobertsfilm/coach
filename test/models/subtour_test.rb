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

require 'test_helper'

class SubtourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
