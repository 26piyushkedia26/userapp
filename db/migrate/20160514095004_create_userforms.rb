class CreateUserforms < ActiveRecord::Migration
  def change
    create_table :userforms do |t|
      t.string :Firstname
      t.string :Lastname

      t.timestamps null: false
    end
  end
end
