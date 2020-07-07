class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
