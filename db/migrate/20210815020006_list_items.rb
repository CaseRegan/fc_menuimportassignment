class ListItems < ActiveRecord::Migration[6.1]
  def self.up
    create_table :list_items do |t|
      t.column :mid, :integer
      t.column :lid, :integer
    end
  end

  def self.down
    drop_table :list_items
  end
end
