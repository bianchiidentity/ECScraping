class CreateBaseurls < ActiveRecord::Migration
  def change
    create_table :baseurls do |t|
      t.text :baseurl
      t.text :name
      t.text :paging_parameter
      t.integer :paging_max
      t.integer :paging_add

      t.timestamps
    end
  end
end
