class CreateGuys < ActiveRecord::Migration[5.0]
  def change
    create_table :guys do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
