class RemoveComments < ActiveRecord::Migration
	def change
		drop_table :comments
	end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :articles
  end
end
