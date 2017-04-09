class CreateCitycleaners < ActiveRecord::Migration[5.0]
  def change
    create_table :citycleaners do |t|
      t.references :cleaner, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
