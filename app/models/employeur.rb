class Employeur < ApplicationRecord
  has_many :adress
  has_many :clients, :through => :clients_has_employeurs
end
