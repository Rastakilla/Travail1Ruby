class Institution < ApplicationRecord
  has_many :adress
  has_many :etude
  belongs_to :etude
end
