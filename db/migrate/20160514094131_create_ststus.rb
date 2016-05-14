class CreateStstus < ActiveRecord::Migration
  def change
    create_table :ststus do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
