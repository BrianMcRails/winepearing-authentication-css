class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :full_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
