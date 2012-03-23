class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body
      t.references :question, :null => false
      t.references :user, :null => false

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :user_id
  end
end
