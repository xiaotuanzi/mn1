# グループを作る
tokyo = Group.create(name: "tokyo")
osaka = Group.create(name: "osaka")

# ユーザーを作る
tanaka = User.create(name: "tanaka")
nakamura = User.create(name: "nakamura")
kimura = User.create(name: "kimura")
ninomiya = User.create(name: "ninomiya")
yamada = User.create(name: "yamada")
sato = User.create(name: "sato")

# グループにユーザを登録
tokyo.users += [ tanaka, nakamura, kimura, sato ]
osaka.users += [ sato, ninomiya, yamada ]
