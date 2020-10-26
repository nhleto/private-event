class Invitation < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :attendee, class_name: 'Event'
end
