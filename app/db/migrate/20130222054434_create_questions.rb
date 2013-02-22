class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.integer :correct

      t.timestamps
    end
  end
end
