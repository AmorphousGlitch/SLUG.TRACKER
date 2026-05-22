class AddArchivedAtToLaps < ActiveRecord::Migration[8.0]
  def change
    add_column :laps, :archived_at, :datetime
  end
end
