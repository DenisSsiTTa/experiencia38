class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tareas, :users do |t|
      # t.index [:tarea_id, :user_id]
      # t.index [:user_id, :tarea_id]
    end
  end
end
