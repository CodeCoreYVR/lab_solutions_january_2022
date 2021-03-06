class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :product
  validates :tag_id, uniqueness: { scope: :product_id, message: "already has that tag"}
end