class ClientsEtatsCivil < ApplicationRecord
  belongs_to :client
  belongs_to :etats_civil
end
