class CreateFacultades < ActiveRecord::Migration[5.2]
  def change
    create_table :facultades do |t|
      t.string :codigo
      t.string :nombre
      t.string :decano

      t.timestamps
    end
  end
end
