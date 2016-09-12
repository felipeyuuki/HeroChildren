class CreateMaternityAssistances < ActiveRecord::Migration
  def change
    create_table :maternity_assistances do |t|
      t.date :startDate
      t.date :endDate
      t.references :mother,index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
