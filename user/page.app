module user/page

  page user(u:User){
    main()
    define localBody(){
      standardLayout{
        formgroup("User"){
          label("Name"){output(u.username)}
          label("E-mail"){output(u.email)}
          showAdminStatus(u)
        }
        break
        navigate(editUser(u)){"edit"}
      }
    }
  }
  
  template editUserDetails(u:User){
    action save{
      u.save();
      message("user info updated");
      return user(u);
    }
    standardLayout{
      form{
        formgroup("Edit User"){
          label("Name"){input(u.username)}
          label("Convention System"){input(u.convention)}
          break
          action("save",save())
        }
      }
    }
  }
  
  template showAdminStatus(u:User){
    label("Is Manager"){output(u.isManager)}
  }
  
  page editUser(u:User){
    main()
    define localBody(){
      standardLayout{
        editUserDetails(u)
      }
    }
  }
  
  page createUser(){
    main()
    "TODO:creat user"
  }
  
  page listUsers(){
    main()
    "TODO:list users"
  }