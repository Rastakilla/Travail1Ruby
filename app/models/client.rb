class Client < ApplicationRecord
  belongs_to :adress

  has_many :clients_has_enfants, :dependent => :destroy
  has_many :enfants, :through => :clients_has_enfants

  has_many :clients_has_conjoints, :dependent => :destroy
  has_many :clients, :through => :clients_has_conjoints

  has_many :etudes, :dependent => :destroy
  has_many :institutions, :through => :etudes

  has_many :clients_etats_civils, :dependent => :destroy
  has_many :etats_civils, :through => :clients_etats_civils

  has_many :clients_has_employeurs, :dependent => :destroy
  has_many :employeurs, :through => :clients_has_employeurs

  accepts_nested_attributes_for :etats_civils, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :enfants, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clients_has_enfants, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clients_etats_civils, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clients_has_employeurs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clients, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :adress, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :etudes, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :employeurs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :institutions, :reject_if => :all_blank, :allow_destroy => true
end
