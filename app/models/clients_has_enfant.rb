class ClientsHasEnfant < ApplicationRecord
  belongs_to :client
  belongs_to :enfant
end
