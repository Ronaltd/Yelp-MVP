class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content , presence: true # so e possivel fazer review se tiver content
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true } # validacao para rating ir de 0 a 5 e somente aceitar numeros
end
