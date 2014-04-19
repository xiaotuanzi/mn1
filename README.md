## has_and_belongs_to_many使うシンプルな多対多関連。

モデルを作ったあと、マイグレーションファイルを使って中間テーブルを作る。

テーブルの名前は、関連する2つのテーブルの名前を、辞書順にアンダースコアでつないだものにする。
順序を間違えると参照できないので注意。

```ruby
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
```

モデルに、has_and_belongs_to_manyを使って参照先のモデルを記述する。

```ruby
class User < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :groups
end
```

```ruby
class Group < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :users
end
```
