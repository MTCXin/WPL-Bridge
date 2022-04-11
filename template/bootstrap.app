module template/bootstrap

template bootstrap(){
  head{
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>"Bridge Club Managing System"</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  }
}

template bootstrapJavascript(){
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
}

template navbar(){
  <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    image("/images/DBC.png")[width="35", height="45", class="d-inline-block align-text-top"]
      // <img src="/images/DBC.png" alt="" width="35" height="45" class="d-inline-block align-text-top">
      "Bridge Club Managing System"
    </a>
 if(!loggedIn()){
              navigate login()[class="btn btn-primary btn-lg"]{"Login"}
            }
            else{
              navigate logout1()[class="btn btn-secondary btn-lg"]{"Logout"}
            }
  
	  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      // <ul class="navbar-nav">
	        // <li class="nav-item">
	        //   <a class="nav-link active" aria-current="page" href="#">navigate home(){"Home"}</a>
	        // </li>
	        navigate home()[class="nav-link active", aria-current="page"]{"Home"}
	        navigate user(securityContext.principal)[class="nav-link active"]{"Your Account"}
	        navigate listUsers()[class="nav-link active"]{"Member in our club"}
	        
	        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              "Manager"
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              // if(securityContext.principal.isManager){
              <li>navigate createBoards()[class="dropdown-item"]{"Create Board"}</li>
              <li>navigate createUser()[class="dropdown-item"]{"Create User"}</li>
            </ul>
          </li>
	    </div>
    
        
  </div>
</nav>
//   <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
//     <div class="container-fluid">
//       <a class="navbar-brand" href="#">
//         <img src="/images/DBC.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
//         "Bridge Club Managing"
//       </a>
//       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
//         <span class="navbar-toggler-icon"></span>
//       </button>
//       <div class="collapse navbar-collapse" id="navbarNavDropdown">
//         <ul class="navbar-nav">
//           <li class="nav-item">
//             <a class="nav-link active" aria-current="page" href="#">navigate(root()){"Home"}</a>
//           </li>
//           <li class="nav-item">
//             <a class="nav-link" href="#">navigate(createBoards()){"Create Board"}</a>
//           </li>
//           <li class="nav-item">
//             <a class="nav-link" href="#">navigate(listUsers()){"Member List"}</a>
//           </li>
//           <li class="nav-item">
//             <a class="nav-link" href="#">navigate(user(securityContext.principal)){"Your Account"}</a>
//           </li>
//           if(securityContext.principal.isManager){
//           <li class="nav-item dropdown">
//             <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
//               "Manager"
//             </a>
//             <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
//               <li><a class="dropdown-item" href="#">navigate(createUser()){"Add User"}</a></li>
//               <li><a class="dropdown-item" href="#">navigate(listUsers()){"List Users"}</a></li>
// 
//             </ul>
//           </li>}
//           <li class="nav-item">
//             <a class="nav-link" href="#">if(!loggedIn()){
//               navigate(login()){"Login"}
//             }
//             else{
//               navigate(logout1()){"Logout"}
//             }</a>
//           </li>
//           
//         </ul>
//       </div>
//     </div>
//   </nav>
}






override template container(){
  <div class="container" all attributes> elements </div>
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