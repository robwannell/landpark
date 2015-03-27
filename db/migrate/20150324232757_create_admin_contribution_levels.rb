class CreateAdminContributionLevels < ActiveRecord::Migration
  def change
    create_table :admin_contribution_levels do |t|
      t.string :name
      t.integer :rank

      t.timestamps null: false
    end
  end
end
