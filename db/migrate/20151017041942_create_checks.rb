class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :first
      t.string :password_digest

      t.timestamps
    end
  end
end
