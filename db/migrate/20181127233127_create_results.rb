class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.references :poll, foreign_key: true
      t.references :user, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
