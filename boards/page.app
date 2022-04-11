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
    <div class="card" >
    <div class="container">
  <div class="row justify-content-md-center">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
      <h2 class="news-post-title">output(n.title)</h2>
    </div>
    <div class="col col-lg-2">
      
    </div>
  </div>
  <div class="row">
    <div class="col">
      output(n.content)
    </div>
    <div class="col-md-auto">
       output(n.time.format("d MMM yyyy HH:mm"))
    </div>
    
  </div>
</div>
  
<div class="row justify-content-md-center">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
      if(loggedIn() && securityContext.principal.isManager){

    navigate editBoards(n)[class="btn btn-info"]{"editBoards"}
  }
    </div>
    <div class="col col-lg-2">
      
    </div>
  </div>
  
  <div class="row justify-content-md-center">
    <div class="col col-lg-2">
      
    </div>
    <div class="col-md-auto">
      if(loggedIn()){
    
    if(securityContext.principal in n.player){
      submit quit()[class="btn btn-danger"] {"quit"}
    }
    if(!(securityContext.principal in n.player)){
      submit join()[class="btn btn-success"] {"join"}
    }
    
    
  }
    </div>
    <div class="col">
    "Members in this game: "
      for(p: User in n.player){
      output(p.username)
      " "
    }
    </div>
  </div>
  

  
  </div>


}

page createBoards(){
  main()
  define localBody(){
    var n := Boards{ time:=now()}
    action save(){
      n.save();
      return home();
    }
    
    header{"Boards"}
    <ul class="list-group list-group-flush">
	  
	  label("Title")[class="form-label"]{input(n.title)[ class="form-control"]}
	  label("Description")[class="list-group-item"]{input(n.content)[ class="form-control"]}
	  label("Time")[class="list-group-item"]{input(n.time)[ class="form-control"]}
	  label("Tournament Director")[class="form-label"]{input(n.director)[ class="form-control"]}
	  <li class="list-group-item">
	  submit save()[class="btn btn-success"] { "save" }
    navigate home()[class="btn btn-success"]{ "cancel" } 
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
        label("Title")[class="form-label"]{input(n.title)[ class="form-control"]}
        label("Content")[class="form-label"]{input(n.content)[ class="form-control"]}
        label("Creator")[class="form-label"]{input(n.director)[ class="form-control"]}
        label("Time")[class="form-label"]{input(n.time)[ class="form-control"]}
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