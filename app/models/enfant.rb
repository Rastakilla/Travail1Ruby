class Enfant < ApplicationRecord
  has_many :clients, :through => :clients_has_enfants
  accepts_nested_attributes_for :clients, :allow_destroy => true
end
