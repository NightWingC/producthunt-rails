# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  slug        :string
#  visible     :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_slug  (slug) UNIQUE
#
class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: { message: "Name is required" }
  validates :description, presence: { message: "Description is required" }

  validates :name, length: { minimum: 5, maximum: 200 }

  # uniqueness
  # length
  # presence
  # format - Regex
end
