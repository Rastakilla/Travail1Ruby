class Institution < ApplicationRecord
  belongs_to :adresses
  has_many :etudes
end
