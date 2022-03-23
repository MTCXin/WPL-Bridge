module user/ac

principal is User with credentials email, password
access control rules

rule page editUser(u:User){
  loggedIn() || principal == u
}

rule page user(u:User){
  loggedIn() || principal == u
}