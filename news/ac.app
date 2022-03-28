module news/ac

access control rules

rule page createNews(){
  loggedIn() && principal.isManager
}

rule page editNews(*){
  loggedIn() && principal.isManager
}

rule page deleteNews(*){
  loggedIn() && principal.isManager
}