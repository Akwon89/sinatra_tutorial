class CreatedAt < ActiveRecord::Migration

  def change
    add_column :messages, :created_at, :date
  end

end