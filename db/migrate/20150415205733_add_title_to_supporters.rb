class AddTitleToSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :title, :string
  end
end
