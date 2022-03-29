module user/data

  entity User{
    username :: String(name)
    email ::Email(id,validate(isUniqueUser(this),"Email is takem"))
	  // homepagr :: URL
	  password :: Secret (validate(password.length() >=8,"Password needs to be at least 8 chars!"))
	  convention :: WikiText
	  isManager :: Bool
	  boards : {Boards} (inverse=player)
  }
  