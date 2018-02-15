class Etude < ApplicationRecord
  has_many :client
  has_many :etude
  has_many :institution
end
