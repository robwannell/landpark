class AddElectedToSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :elected, :boolean
  end
end
