class CreatePhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_numbers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
