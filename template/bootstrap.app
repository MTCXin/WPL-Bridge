module template/bootstrap


template bootstrap(){
  head{
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>"Bridge Club Managing System"</title>
    
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  }
}

template bootstrapJavascript(){
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
}

template navbar(){
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      navbarheader
      <div class="collapse navbar-collapse" id="bs-example-navbar=collapse-1">
      navbarleft
      navbarsearch
      </div>
    </div>
  </nav>
}

template navbarheader(){
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
      <span class="sr-only">"Toggle navigation"</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  navigate root()[class="navbar-brand"]{ "home" }
</div>
}

template navbarsearch(){"TODO:navbarsearch"}

override template container(){
  <div class="container" all attributes> elements </div>
}

template navbarleft(){
  <ul class="nav navbar-nav">
    <!-- for(i:MenuItem in topmenu.items){
      <li>output(i)</li>
    }
    <li>navigate(page(page_about)){"About"}</li> -->
    if(loggedIn()){
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">"Admin"<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li>navigate(createBoards()){"Create Board"}</li> 
          // navbarsep
          <li>navigate(listUsers()){"Member List"}</li> //TODO:list member
          // navbarsep 
          <li>navigate(user(securityContext.principal)){"Your Account"}</li>
          if(securityContext.principal.isManager){
            // navbarsep
            
            <li>navigate(createUser()){"Add User"}</li>
            // navbarsep
            <li>navigate(listUsers()){"List Users"}</li>
            // navbarsep
          }
        </ul>
      </li>
    }
    <li>
      if(!loggedIn()){
        navigate(login()){"Login"}
      }
      else{
        navigate(logout1()){"Logout"}
      }
    </li>
  </ul>
}
template gridrow(){
  <div class="row" all attributes> elements </div>
}

template gridcolmiddle(){
  <div class ="col-sm-10 col-sm-offset-1" all attributes> elements </div>   
}

template standardLayout(){
  container{
  gridrow{
    gridcolmiddle{
      elements
    }
  }
}}