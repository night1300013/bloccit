class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post

  delegate :topic, to: :post, prefix: true
  delegate :user, to: :post, prefix: true
end
