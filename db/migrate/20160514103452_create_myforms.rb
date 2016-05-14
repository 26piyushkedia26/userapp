class CreateMyforms < ActiveRecord::Migration
  def change
    create_table :myforms do |t|
      t.string :name
      t.string :emailid
      t.string :phoneno

      t.timestamps null: false
    end
  end
end
