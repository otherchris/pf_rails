class CreatePlans < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :name
      t.float :vest_level

      t.timestamps null: false
    end
  end
end
