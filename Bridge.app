application Bridge

//token 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
imports template/main
imports user/main

imports login
imports ac
page home(){
  init{
    return root();
    
  }
}

page root {
  main()  //TODO
  template localBody(){
    "To do show news"//showNews() //TODO
  }
  template sidebarPlaceholder(){
    sidebar{
      "News"
    }
  }
}

template formgroup(s:String){
  <fieldset>
    <legend>
      output(s)
    </legend>
    elements()
  </fieldset>
}

access control rules
  rule page root(){ true }