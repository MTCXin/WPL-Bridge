module template/bootstrap


template bootstrap(){
  head{
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>"Bridge Club Managing System"</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  }
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
  "TODO-navbar-header"
  navigate root()[class="navbar-brand"]{ "home" }
}

template navbarsearch(){"TODO:navbarsearch"}
override template container(){
  <div class="container" all attributes> elements </div>
}

template navbarleft(){
  if(loggedIn()){
  	"TODO: logged in"
  }
  <li>
	  if(!loggedIn()){
	  	navigate(login()){"Login"}
	  }
	  else{
	  	navigate(logout1()){"Logout"}
	  }
	</li>
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