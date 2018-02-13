class Client < ApplicationRecord
  has_many :adress
  has_many :employeur, :through => :clients_has_employeur
  has_many :etats_civil, :through => :clients_etats_civil
  has_many :enfant, :through => :clients_has_enfant
  has_many :client, :through => :clients_has_conjoint
  has_many :client, :through => :clients_has_conjoint
  accepts_nested_attributes_for :enfants, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etatscivils, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :employeurs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :adresses, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etudes, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :institutions, :reject_if => :all_blank, :allow_destroy => true
end
