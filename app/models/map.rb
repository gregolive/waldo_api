class Map < ApplicationRecord
  has_many :characters, dependent: :destroy
end
