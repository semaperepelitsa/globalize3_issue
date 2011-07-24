class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|

      t.timestamps
    end
    Category.create_translation_table!(:name => :string)
  end

  def self.down
    Category.destroy_translation_table!
    drop_table :categories
  end
end
