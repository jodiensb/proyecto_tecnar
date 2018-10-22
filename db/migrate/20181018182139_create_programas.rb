class CreateProgramas < ActiveRecord::Migration[5.2]
  def change
    create_table :programas do |t|
      t.string :codigo
      t.string :nombre
      t.string :encargado

      t.timestamps
    end
  end
end
