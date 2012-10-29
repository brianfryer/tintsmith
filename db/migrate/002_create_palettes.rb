class CreatePalettes < ActiveRecord::Migration
  def self.up
    create_table :palettes do |t|
      
      t.timestamps
    end
  end

  def self.down
    drop_table :palettes
  end
end
