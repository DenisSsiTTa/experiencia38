class AddUserToTarea < ActiveRecord::Migration[5.1]
  def change
    add_reference :tareas, :user, foreign_key: true
  end
end
