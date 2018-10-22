class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :codigo
      t.date :ingreso
      t.date :egreso
      t.string :nombre
      t.string :apellidos
      t.references :facultad, foreign_key: true
      t.references :programa, foreign_key: true
      t.integer :telefono
      t.string :correo
      t.string :direccion

      t.timestamps
    end
  end
end
