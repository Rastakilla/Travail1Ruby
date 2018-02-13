class ClientsEtatsCivil < ApplicationRecord
  belongs_to :etats_civil
  belongs_to :client
end
