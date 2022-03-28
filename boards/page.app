module boards/page

page creatBoards{
  main()
  "TODO creat board"
}

page joinBoards{
  main()
  "TODO join a board"
}


template showBoards(){
  container{
    gridrow{
      gridcolmiddle{
        <div class="news-header">
          <h1 class="news-title">"Bridge Club"</h1>
          <p class="lead news-description">"Managing System desighed fo Bridge Club"</p>
        </dix>
      }
    }
    gridrow{
      gridcolmiddle{
        for(n: Boards in select u from Boards as u order by time descending){
          <div class="news-post">
            output(n)
          </div>

        }
      }
    }
  }
}

template output(n: Boards){
  <h2 class="news-post-title">output(n.title)</h2>
  <p class="news-post">
    output(n.time.format("d MMM yyyy HH:mm"))
  </p>
  <p>
    output(n.content)
  </p>

   if(isManager()){

    navigate(editBoards(n)){"editBoards"}
  }

  if(loggedIn()){ //TODO: check if user have register this board
    break
    for(user: User in select u from n.player){
      <div class="news-post"> 
      output(n)
      </div>
    action join{
      
    }
    action quit{
      
    }
    
    submit join {"TODO:join/quit"}
  }


}

page createBoards(){
  main()
  define localBody(){
    var n := News{creator := securityContext.principal time:=now()}
    action save(){
      n.save();
      return home();
    }
    header{"Boards"}
    form{
      formgroup("Create a new Board")[labelWidth := "75"]{
        label("Title"){input(n.title)}
        label("Description"){input(n.content)}
        label("Creator"){input(n.creator)}
        label("Time"){input(n.time)}
      }
      submit save { "save" }
      navigate home { "cancel" }
    }
  }
}

page editBoards(n: Boards){
  main()
  define localBody(){
    action save(){
      n.save();
      return home();
    }
    header{"Boards"}
    form{
      formgroup("Edit Boards")[labelWidth := "75"]{
        label("Title"){input(n.title)}
        label("Content"){input(n.content)}
        label("Creator"){input(n.creator)}
        label("Time"){input(n.time)}
      }
      submit save { "save" }
      navigate home { "cancel" }
    }
  }
}

page deleteBoards(n: Boards){
  main()
  define localBody(){
    output(n)
    break
    "This board game will be deleted "
    form{
      submit delete { "confirm" }
    }
    navigate home { "cancel" }
    action delete(){
      n.delete();
      return home();
    }
  }
}