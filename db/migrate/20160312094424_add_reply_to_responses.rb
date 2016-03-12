class AddReplyToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :reply, :string
  end
end
