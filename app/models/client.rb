class Client < ApplicationRecord
  has_many :adress
  has_many :employeur, :through => :clients_has_employeur
  has_many :etats_civil, :through => :clients_etats_civil
  has_many :enfant, :through => :clients_has_enfant
  has_many :client, :through => :clients_has_conjoint
  has_many :client, :through => :clients_has_conjoint
end
