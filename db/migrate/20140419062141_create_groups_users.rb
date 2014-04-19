# 中間テーブルを作るマイグレーションファイル
# 中間テーブルはモデルを持たないので、このファイルは rails generate migration で作成する。
# テーブルの名前は、2つのモデルの複数形を辞書順にアンダースコアでつないで作る。(順序に注意)
# UserとGroupをつなぐ中間テーブルは、"groups_users" になる。(辞書順にすること。"users_groups"ではダメ。)

class CreateGroupsUsers < ActiveRecord::Migration
  def up
    create_table :groups_users, :id => false do |t|
      t.references :user
      t.references :group
    end
  end

  def down
    drop_table :groups_users
  end
end
