module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://placehold.jp/#{height}x#{width}.png"
  end
end
