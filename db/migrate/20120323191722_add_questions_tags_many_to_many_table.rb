class AddQuestionsTagsManyToManyTable < ActiveRecord::Migration
  def change
    create_table :questions_tags, :id => false do |t|
      t.integer :question_id, :null => false
      t.integer :tag_id, :null => false
    end

    add_index :questions_tags, [:question_id, :tag_id], :unique => true
  end
end
