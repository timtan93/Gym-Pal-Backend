class AddFatAndMuscleNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fat, :integer
    add_column :users, :muscle, :integer
  end
end
