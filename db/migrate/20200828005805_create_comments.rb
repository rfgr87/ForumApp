class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :info
      t.belongs_to :subject, null: false, foreign_key: true
    end
  end
end
