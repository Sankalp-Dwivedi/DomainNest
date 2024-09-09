class CreateRegistrationFields < ActiveRecord::Migration[7.2]
  def change
    create_table :registration_fields do |t|
      t.references :tenant, null: false, foreign_key: true
      t.string :field_name
      t.string :field_type

      t.timestamps
    end
  end
end
