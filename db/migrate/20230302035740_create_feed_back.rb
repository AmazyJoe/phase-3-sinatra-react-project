class CreateFeedBack < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

 
