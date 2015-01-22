class CreateRemoveDuplicateRoleFromUsers < ActiveRecord::Migration
  def change
    create_table :remove_duplicate_role_from_users do |t|
      remove_reference(:users, :role, index: true)
      t.timestamps null: false
    end
  end
end
