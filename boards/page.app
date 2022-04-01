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
	  
	  label("Title")[class="form-label"]{input(n.title)[ class="form-control"]}
	  label("Description")[class="list-group-item"]{input(n.content)[ class="form-control"]}
	  label("Time")[class="list-group-item"]{input(n.time)[ class="form-control"]}
	  <li class="list-group-item">
	  submit save()[class="btn btn-success"] { "save" }
    navigate home()[class="btn btn-success"]{ "cancel" } 
	  </li>
	  </ul>
           
//     <form class="row g-3">
//   <div class="col-md-6">
//     label("Description")[class="form-label"]{input(n.content)[class="form-control"]}
// 
//   </div>
//   <div class="col-md-6">
//     <label for="inputPassword4" class="form-label">Password</label>
//     <input type="password" class="form-control" id="inputPassword4">
//   </div>
//   <div class="col-12">
//     <label for="inputAddress" class="form-label">Address</label>
//     <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
//   </div>
//   <div class="col-12">
//     <label for="inputAddress2" class="form-label">Address 2</label>
//     <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
//   </div>
//   <div class="col-md-6">
//     <label for="inputCity" class="form-label">City</label>
//     <input type="text" class="form-control" id="inputCity">
//   </div>
//   <div class="col-md-4">
//     <label for="inputState" class="form-label">State</label>
//     <select id="inputState" class="form-select">
//       <option selected>Choose...</option>
//       <option>...</option>
//     </select>
//   </div>
//   <div class="col-md-2">
//     <label for="inputZip" class="form-label">Zip</label>
//     <input type="text" class="form-control" id="inputZip">
//   </div>
//   <div class="col-12">
//     <div class="form-check">
//       <input class="form-check-input" type="checkbox" id="gridCheck">
//       <label class="form-check-label" for="gridCheck">
//         Check me out
//       </label>
//     </div>
//   </div>
//   <div class="col-12">
//     <button type="submit" class="btn btn-primary">Sign in</button>
//   </div>
// </form>
    
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