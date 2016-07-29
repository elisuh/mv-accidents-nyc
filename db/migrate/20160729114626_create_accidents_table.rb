class CreateAccidentsTable < ActiveRecord::Migration
  def change
    create_table :accidents do |t|
      t.string   :month, { null: false, limit: 50 }
      t.string   :borough, { null: false, limit: 50 }
      t.integer  :zip { null: false, limit: 50 }
      t.string   :address
      t.string   :reason { limit: 200 }
      t.timestamps
  end
end
