class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :codeSector
      t.string :descriptionSector

      t.timestamps null: false
    end
  end
end
