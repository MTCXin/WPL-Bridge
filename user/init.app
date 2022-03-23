module user/init

var test1 : User :=
	User {
		username := "test1"
		email    := "test1@test.com"
		password := "testtest"
		isManager  := true
	}
	
	var test2 : User :=
  User {
    username := "test2"
    email    := "test2@test.com"
    password := "testtest"
    isManager  := false
  }
