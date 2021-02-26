# frozen_string_literal: true

# Serializer
class ColorSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :pantone, :year, :updated_at, :created_at
end
