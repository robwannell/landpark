class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :firstname
      t.string :lastname
      t.integer :contribution
      t.references :admin_contribution_level, index: true
      t.string :organization

      t.timestamps null: false
    end
    add_foreign_key :contributions, :admin_contribution_levels
  end
end
