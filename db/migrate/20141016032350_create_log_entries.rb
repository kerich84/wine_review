class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.string :name
      t.integer :raiting
      t.string :location
      t.string :comments
      t.datetime :tasted_on

      t.timestamps
    end
  end
end
