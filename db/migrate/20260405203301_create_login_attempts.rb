class CreateLoginAttempts < ActiveRecord::Migration[7.0]
  def change
    create_table :login_attempts do |t|
      t.string :email
      t.string :password
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
