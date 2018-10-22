class Programa < ApplicationRecord
  has_many :estudiantes
  belongs_to :facultad
  validates :codigo, :presence => true
end
