class Etude < ApplicationRecord
  has_many :clients
  belongs_to :institution
  accepts_nested_attributes_for :institutions, :allow_destroy => true
end
