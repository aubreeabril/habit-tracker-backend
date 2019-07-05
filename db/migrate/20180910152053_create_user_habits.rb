class CreateUserHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habits do |t|
      t.integer :user_id
      t.integer :habit_id

      t.timestamps
    end
  end
end
