class EtatsCivil < ApplicationRecord
  has_many :clients, :through => :clients_etats_civils
end
