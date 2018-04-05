class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.string :title
      t.text :description
      t.string :ubicacion

      t.timestamps
    end
  end
end
