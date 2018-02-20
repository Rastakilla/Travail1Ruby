class Institution < ApplicationRecord
  belongs_to :adress
  has_many :etudes
end
