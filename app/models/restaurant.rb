class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'french', 'italian', 'japanese', 'belgian'] #constante com as categorias fixas
  validates :name, :address, presence: :true # validacao para que nome e endereco estejam presentes na inclusao
  validates :category, inclusion: { in: CATEGORIES }
  # cada Restaurant pode ter varias reviews, sendo que a destruicao das reviews estão vinculada aos Restaurants
  has_many :reviews, dependent: :destroy
end
