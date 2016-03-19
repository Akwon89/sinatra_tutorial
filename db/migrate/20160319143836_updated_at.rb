class UpdatedAt < ActiveRecord::Migration

  def change
    add_column :messages, :updated_at, :date
  end

end