class Facultad < ApplicationRecord
  has_many :estudiantes
  has_many :programas
  validates :codigo, :presence => true
end
