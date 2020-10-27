class User < ApplicationRecord
  has_many :invitations, foreign_key: 'attendee_id'
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attended_events, through: :invitations

end
