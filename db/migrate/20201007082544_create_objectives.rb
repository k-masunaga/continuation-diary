class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :aim,      null: false
      t.string :unit,     null: false
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
