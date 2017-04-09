class CreateCleaners < ActiveRecord::Migration[5.0]
  def change
    create_table :cleaners do |t|
      t.string :name

      t.timestamps
    end
  end
end
