module boards/ac

access control rules

rule page createBoards(){
  loggedIn() && principal.isManager
}

rule page editBoards(*){
  loggedIn() && principal.isManager
}

rule page deleteBoards(*){
  loggedIn() && principal.isManager
}