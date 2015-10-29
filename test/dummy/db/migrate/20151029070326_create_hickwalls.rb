class CreateHickwalls < ActiveRecord::Migration
  def change
    create_table :hickwalls do |t|
      t.string :last_squawk

      t.timestamps null: false
    end
  end
end
