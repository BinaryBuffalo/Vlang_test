fn main() {
	repo := Repo{
		users: [User{1, 'Andrew'}, User{2, 'Bob'}, User{10, 'Charles'}]
	}
	user := repo.find_user_by_id(10) or { // Option types must be handled by `or` blocks
		return
	}

   	user := repo.find_user_by_id(7) or {
		println(err) // "User 7 not found"
		return
  	}

	println(user.id) // "10"
	println(user.name) // "Charles"
}