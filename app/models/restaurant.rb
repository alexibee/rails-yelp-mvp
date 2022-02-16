# frozen_string_literal: true

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :phone_number, format: { with: /\A(\+|\d)\d{11,14}/ }
  has_many :reviews, dependent: :destroy
end
