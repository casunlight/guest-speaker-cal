class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :speakers, :name, :full_name
  end
end
