class CreateNewComments < ActiveRecord::Migration[5.0]
  def change
    create_table :new_comments do |t|
      t.string :comment
      t.integer :new_comment_duty_id
      t.string :new_comment_duty_type

      t.timestamps
    end
  end
end
