class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.integer :ordinal
      t.text :topics
      t.integer :week_id

      t.timestamps
    end
  end
end
