class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|

      t.timestamps
    end
  end
end
