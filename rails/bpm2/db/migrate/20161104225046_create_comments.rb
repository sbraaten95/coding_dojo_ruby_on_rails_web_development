class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :comment_duty_id
      t.string :comment_duty_type

      t.timestamps
    end
  end
end
