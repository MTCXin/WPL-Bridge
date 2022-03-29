module boards/data

entity Boards{
  content :: WikiText (searchable)
  time :: DateTime
  title :: String (name, searchable)
  creator -> User
  player : {User}
}