class Estudiante < ApplicationRecord
  belongs_to :facultad
  belongs_to :programa
  validates :codigo, :presence => true
  validates :nombre, :presence => true
  validates :apellidos, :presence => true
  validates :facultad, :presence => true
  validates :programa, :presence => true
  validates :telefono, :presence => true
  validates :correo, :presence => true
end
