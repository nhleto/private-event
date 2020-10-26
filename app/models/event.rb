class Event < ApplicationRecord
  has_many :invitations, foreign_key: :user_id
  has_many :attendees, through: :invitations
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
