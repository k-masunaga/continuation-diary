class CreateDiariesObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries_objectives do |t|

      t.timestamps
    end
  end
end
