class Course < ApplicationRecord
  has_many :sections
  extend FriendlyId
  friendly_id :title, use: :slugged
end
