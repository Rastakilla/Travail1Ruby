class Employeur < ApplicationRecord
  has_many :adress
  has_many :client, :through => :clients_has_employeur
end
