class CreateListpages < ActiveRecord::Migration
  def change
    create_table :listpages do |t|
      t.text :name
      t.text :url
      t.text :paging_parameter
      t.integer :paging_max
      t.integer :paging_add
      t.text :link_get_tag
      t.text :link_get_attribute
      t.text :link_get_value
      t.text :keyword
      t.text :details_pages
      t.string :csvname

      t.timestamps
    end
  end
end
