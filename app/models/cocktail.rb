class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  has_many_attached :images

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
end
