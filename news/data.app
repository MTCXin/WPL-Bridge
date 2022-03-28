module news/data

entity News{
  content :: WikiText (searchable)
  time :: DateTime
  title :: String (name, searchable)
  creator -> User
}