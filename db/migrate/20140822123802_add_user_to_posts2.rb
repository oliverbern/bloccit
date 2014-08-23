class AddUserToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
      add_index :posts, :user_id

      params.permit(:user_id)
  end
end
