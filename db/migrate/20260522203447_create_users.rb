class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :share_token

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :share_token, unique: true
  end
end
