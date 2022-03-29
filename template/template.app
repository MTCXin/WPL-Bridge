module template/template

imports template/bootstrap

template main(){
  bootstrap
  navbar
  body
  bootstrapJavascript
  <script type="text/javascript">
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
  </script>
  <script type="text/javascript">
    try {
    var pageTracker = _gat._getTracker("UA-10588367-1");
    pageTracker._trackPageview();
    } catch(err) {}
  </script>
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
template navbarsep(){
  "TODO:navbarsep"
}
template sidebarPlaceholder(){
  
}