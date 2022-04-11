module user/page

  page user(u:User){
    main()
    define localBody(){
      standardLayout{
        <div class="card" >
    <div class="container">
  <div class="row justify-content-md-center">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
      <h2 class="news-post-title">"User:  " output(u.username)</h2>
      
    </div>
    <div class="col col-lg-2">
      
    </div>
  </div>
  <div class="row">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
    "Your E-mail: "
    output(u.email)
    </div>
    <div class="col col-lg-2">
      
    </div>
    </div>
    <div class="row">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
    "Your bidding system"
    output(u.convention)
    </div>
    <div class="col col-lg-2">
      showAdminStatus(u)
    </div>
    </div>
  </div>
</div>
       
        break
        navigate editUser(u)[class="btn btn-info"]{"edit"}
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
          label("Name")[class="form-label"]{input(u.username)[class="form-control", placeholder="your name"]}
          label("E-mail")[class="form-label"]{input(u.email)[class="form-control", placeholder="name@example.com"]}
          label("Convention System")[class="form-label"]{input(u.convention)[class="form-control", placeholder="Describe your convention and system here"]}
          submit save()[class="btn btn-success"]{"save"}
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

    var temp : Secret := ""
    action changePassword(){
      u.password := u.password.digest();
      u.save();
      message("password changed");
      return user(u);
    
    }
    form{
      formgroup("Change Password"){
        label("Password")[class="form-label"]{input(u.password)[class="form-control"]}
        label("Repeat Password")[class="form-label"]{input(temp)[class="form-control"]{ validate(u.password == temp, "Password does not match") } }
        break
        submit changePassword()[class="btn btn-success"]{"change"}
      }
    }
  }

  page editUser(u:User){
    main()
    define localBody(){
      standardLayout{
        editUserDetails(u)
        editUserPassword(u)
        // editAdminStatus(u)
      }
    }
  }
  
  page createUser(){
    main()
    define localBody(){
      var u := User{} 
      var temp : Secret := ""
      action save(){
        u.password := u.password.digest();
        u.save();
        return user(u);
      }
      standardLayout{
        form{
          formgroup("Create User"){
            label("Name")[class="form-label"]{input(u.username)[class="form-control", placeholder="user's name"]}
            label("Email")[class="form-label"]{input(u.email)[class="form-control", placeholder="name@example.com"]}
            label("Password")[class="form-label"]{input(u.password)[class="form-control"]}
            label("Repeat Password")[class="form-label"]{input(temp)[class="form-control"]{ validate(u.password == temp, "Password does not match") } }
            break
            submit save()[class="btn btn-success"]{"save"}
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