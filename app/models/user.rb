class User < ApplicationRecord
  has_many :events, dependent: :destroy
end
