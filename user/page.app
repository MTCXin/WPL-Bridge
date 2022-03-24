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
  
  template editAdminStatus(u:User){
    action save(){
      u.save();
      message("user info updated");
      return user(u);
    }
    form{
      formgroup("Edit Admin Status"){
        label("Is Manager"){input(u.isManager)}
        break
        action("save",save())
      }
    }
  }

  template editUserPassword(u:User){
    "TODO: change pw"
    action changePassword(){
      var pass : String := u.password.toString();
      u.password := u.password.digest();
      u.save();
      email(emailNewPassword(u,pass));
      message("password changed");
      return user(u);
    }
    }
    form{
      formgroup("Change Password"){
        label("Password"){input(u.password)}
        label("Repeat Password"){input(temp){ validate(u.password == temp, "Password does not match") } }
        break
        action("change",changePassword())
      }
    }
  }

  page editUser(u:User){
    main()
    define localBody(){
      standardLayout{
        editUserDetails(u)
        editUserPassword(u)
        editAdminStatus(u)
      }
    }
  }
  
  page createUser(){
    main()
    define localBody(){
      var u := User{}  //TODO vars cannot be in enclosing def, fix
      var temp : Secret := ""
      action save(){
        u.password := u.password.digest();
        u.save();

        //message("user info updated");
        return user(u);
      }
      standardLayout{
        form{
          formgroup("Create User"){
            label("Name"){input(u.username)}
            label("Email"){input(u.email)}
            label("Password"){input(u.password)}
            label("Repeat Password"){input(temp){ validate(u.password == temp, "Password does not match") } }
            break
            action("save",save())
          }
        }
      }
    }
  }
  
  page listUsers(){
    main()
    define localBody(){
      standardLayout{
        group("Users"){
          table{
            for(u:User order by u.username){
              output(u)
            }
          }
        }
      }
    }
  }