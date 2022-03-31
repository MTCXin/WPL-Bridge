module boards/page


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
  action join(){
      n.player.add(securityContext.principal);
    }
    action quit(){
      n.player.remove(securityContext.principal);
    }
  <h2 class="news-post-title">output(n.title)</h2>
  <p class="news-post">
    output(n.time.format("d MMM yyyy HH:mm"))
  </p>
  <p>
    output(n.content)
  </p>

  if(loggedIn() && securityContext.principal.isManager){

    navigate(editBoards(n)){"editBoards"}
  }

  if(loggedIn()){
    break
    
    // for(user: User in select u from n.player){
    //   <div class="news-post"> 
    //   output(u)
    //   </div>
    //   }  TODO show members participating
    
    if(securityContext.principal in n.player){
      submit quit() {"quit"}
    }
    if(!(securityContext.principal in n.player)){
      submit join() {"join"}
    }
    
    
  }


}

page createBoards(){
  main()
  define localBody(){
    var n := Boards{creator := securityContext.principal time:=now()}
    action save(){
      n.save();
      return home();
    }
    header{"Boards"}
    <ul class="list-group list-group-flush">
	  <li class="list-group-item">
			  <div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label">label("Title"){input(n.title)}</label>
			  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
	  </li>
	  <li class="list-group-item">label("Description"){input(n.content)}</li>
	  <li class="list-group-item">label("Time"){input(n.time)}</li>
	  <li class="list-group-item">
	  <button type="button" class="btn btn-success">submit save() { "save" }</button>
    <button type="button" class="btn btn-danger">navigate home() { "cancel" } </button>
	  </li>
	  </ul>
           
    
    
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
      submit save() { "save" } 
      navigate home() { "cancel" }
    }
  }
}

page deleteBoards(n: Boards){
  main()
  define localBody(){
    output(n)
    break
    
    "This board game will be deleted"
    
    form{
      submit delete() { "confirm" }
    }
    navigate home(){ "cancel" }
    action delete(){
      n.delete();
      return home();
    }
  }
}