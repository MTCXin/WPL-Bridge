module boards/data

enum gameType {
  casual("Casual Game"),
  competation("Competation"),
  other("Other")
}

entity Boards{
  content :: WikiText (searchable)
  time :: DateTime
  title :: String (name, searchable)
  director -> User
  type : gameType
  player : {User}
}