# frozen_string_literal: true

# Color
class Color < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
  validates :pantone, presence: true
  validates :year, presence: true

  scope :descending_order, -> { all.order(id: :desc) }
end
