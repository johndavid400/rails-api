class Section < ApplicationRecord
  belongs_to :course
  extend FriendlyId
  friendly_id :title, use: :scoped, scope: :course
end
