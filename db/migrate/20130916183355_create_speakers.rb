class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :lecture_title
      t.text :lecture_description
      t.integer :day_id

      t.timestamps
    endrake
  end
end
