class CreateLaps < ActiveRecord::Migration[8.0]
  def change
    create_table :laps do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :logged_at

      t.timestamps
    end
  end
end
