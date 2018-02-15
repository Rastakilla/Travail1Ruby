class Client < ApplicationRecord
  has_many :adress
  has_many :etude
  has_many :clients_has_enfant
  has_many :clients_etats_civil
  has_many :clients_has_employeur
  has_many :clients_has_conjoint
  has_many :employeur, :through => :clients_has_employeur
  has_many :etats_civil, :through => :clients_etats_civil
  has_many :enfant, :through => :clients_has_enfant
  has_many :institution, :through => :etude
  has_many :client, :through => :clients_has_conjoint
  accepts_nested_attributes_for :client, :allow_destroy => true
  accepts_nested_attributes_for :enfant, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etats_civil, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :employeur, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :adress, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etude, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :institution, :reject_if => :all_blank, :allow_destroy => true
end
