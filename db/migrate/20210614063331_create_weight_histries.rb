class CreateWeightHistries < ActiveRecord::Migration[6.1]
  def change
    create_table :weight_histries do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :weight
      t.string :memo

      t.timestamps
    end
  end
end
