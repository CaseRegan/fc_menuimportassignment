class MenuItems < ActiveRecord::Migration[6.1]
  def self.up
    create_table :menu_items do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :category, :string
    end
  end

  def self.down
    drop_table :menu_items
  end
end
