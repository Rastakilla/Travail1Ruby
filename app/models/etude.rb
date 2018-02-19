class Etude < ApplicationRecord
  has_many :client
  has_many :institution
  accepts_nested_attributes_for :institution, :allow_destroy => true
end
