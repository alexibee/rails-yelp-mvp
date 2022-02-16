# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presense: true
  validates :rating, inclusion: { in: (0..5) }
end
