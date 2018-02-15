class Enfant < ApplicationRecord
  has_many :client, :through => :clients_has_enfant
  accepts_nested_attributes_for :client, :allow_destroy => true
end
