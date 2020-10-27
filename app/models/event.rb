class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitations, foreign_key: 'attended_event_id', dependent: :destroy
  has_many :attendees, through: :invitations

  scope :past_events, -> { where('date < ?', Date.today) }
  scope :upcoming_events, -> { where('date > ?', Date.today) }

  # def self.past_events
  #   where('date < ?', Date.today)
  # end

  # def self.upcoming_events
  #   where('date > ?', Date.today)
  # end
end
