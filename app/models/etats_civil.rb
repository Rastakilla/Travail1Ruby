class EtatsCivil < ApplicationRecord
  has_many :client, :through => :clients_etats_civil
end
