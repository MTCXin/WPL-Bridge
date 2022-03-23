module template/template

imports template/bootstrap

template main(){
  bootstrap
  navbar
  body
  "main to do!"
}
template body(){
  localBody()
}
template localBody(){
  "default LB"
}
template sidebar(){
  <div class="sidebarcontent">
    elements
  </div>
}
template sidebarPlaceholder(){
  
}