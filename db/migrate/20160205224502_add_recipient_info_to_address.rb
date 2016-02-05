class AddRecipientInfoToAddress < ActiveRecord::Migration
 def change
    change_table :addresses do |t|
      t.string :recipient_full_name
      t.string :recipient_address_line_1
      t.string :recipient_address_line_2
      t.string :recipient_address_city
      t.string :recipient_address_state
      t.string :recipient_address_zip

    end
  end
end
