class AddIndividualToSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :individual, :boolean
  end
end
