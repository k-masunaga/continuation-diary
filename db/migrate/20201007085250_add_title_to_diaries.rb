class AddTitleToDiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :title, :string, null:false
    add_column :diaries, :valuation, :integer, null:false
    add_column :diaries, :sleep, :string, null:false
    add_column :diaries, :feeling, :string, null:false
    add_column :diaries, :short_term_goals, :string, null:false
    add_column :diaries, :long_term_goals, :string, null:false
    add_column :diaries, :plan, :string, null:false
    add_column :diaries, :remark, :string
  end
end
