class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :description
      t.integer :rank

      t.timestamps
    end
    add_index :todos, :rank, unique: true
  end
end
