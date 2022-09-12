class CreateHellos < ActiveRecord::Migration[7.0]
  def change
    create_table :hellos do |t|
      t.string :name

      t.timestamps
    end
  end
end
