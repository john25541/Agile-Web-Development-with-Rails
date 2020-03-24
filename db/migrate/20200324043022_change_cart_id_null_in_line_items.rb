class ChangeCartIdNullInLineItems < ActiveRecord::Migration[5.2]
  def change
    change_column :line_items, :cart_id, :bigint, null:true
  end
end
