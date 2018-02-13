class Enfant < ApplicationRecord
  has_many :client, :through => :clients_has_enfant
end
