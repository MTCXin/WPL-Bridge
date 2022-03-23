module ac

define override page accessDenied(){
  main()
  define localBody(){
    header{"Can't Access"}
    navigate(home()){"return to homepage"}
  }
}

access control rules

rule page home(){true}
rule page login(){true}
rule page logout1(){true}
rule template *(*){true}