class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :group
      t.integer :rank
      t.string :organization

      t.timestamps null: false
    end
  end
end
