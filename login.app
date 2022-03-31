module login

override page login()
{
  main()
  define localBody(){
    //submit action things??
    var e:Email
    var p:Secret
    standardLayout{
      form{
        label("User Name"){input(e)}
        label("Passeord"){input(p)}
        <div>validate(checkLogin(e,p),"Login failed")</div>
        submit login()[class="loginbutton"]{"login"}
      }
  //     <form class="dropdown-menu p-4">
		//   <div class="mb-3">
		//     <label for="exampleDropdownFormEmail2" class="form-label">input(e){"User Name"}</label>
		//     <input type="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
		//   </div>
		//   <div class="mb-3">
		//     <label for="exampleDropdownFormPassword2" class="form-label">input(p){"Passeord"}</label>
		//     <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Password">
		//   </div>
		//   <div class="mb-3">
		//     <div class="form-check">
		//       <input type="checkbox" class="form-check-input" id="dropdownCheck2">
		//       <label class="form-check-label" for="dropdownCheck2">
		//         "Remember me"
		//       </label>
		//     </div>
		//   </div>
		//   <button type="submit" class="btn btn-primary">login(){"login"}</button>
		// </form>
    }
    action login(){
      securityContext.principal := getUsersWithEmailAddress(e).get(0);
      message("Logged in Successfully");
      return home();
    }
  }
  define sidebarPlaceholder(){
    sidebar{
      "Login"
    }
  }
}

function checkLogin(e:Email,p:Secret):Bool{
  var users : List<User> := getUsersWithEmailAddress(e);
  return users.length==1 && users.get(0).password.check(p);
}

function getUsersWithEmailAddress(e:Email): List<User>{
  return select u from User as u where (u.email = ~e);
}
page logout1()
{
  init{
    securityContext.principal := null;
    return home();
  }
}