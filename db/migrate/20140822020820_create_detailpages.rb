class CreateDetailpages < ActiveRecord::Migration
  def change
    create_table :detailpages do |t|
      t.text :detail_url
      t.text :need_propertys
      t.text :property_get_rules
      t.text :get_property

      t.timestamps
    end
  end
end
