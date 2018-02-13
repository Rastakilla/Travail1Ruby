class ClientsHasEmployeur < ApplicationRecord
  belongs_to :client
  belongs_to :employeur
end
