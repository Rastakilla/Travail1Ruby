class Adress < ApplicationRecord
  has_many :clients
  has_many :institutions
end
