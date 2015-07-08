class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :remote_ip
      t.string :method
      t.string :scheme
      t.string :query_string
      t.string :query_params
      t.text :cookies
      t.text :headers
      t.string :trap_id
      t.text :raw

      t.timestamps null: false
    end
  end
end
