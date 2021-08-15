class Lists < ActiveRecord::Migration[6.1]
  def self.up
    create_table :lists do |t|
      t.column :name, :string, :limit => 32, :null => false
    end
  end
  def self.down
    drop_table :lists
  end
end
