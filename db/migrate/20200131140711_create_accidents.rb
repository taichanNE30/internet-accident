class CreateAccidents < ActiveRecord::Migration[6.0]
  def change
    create_table :accidents do |t|
      t.date :date
      t.integer :injured, default: 0, null:false
      t.integer :dead, default: 0, null:false
      t.timestamps
    end
  end
end
