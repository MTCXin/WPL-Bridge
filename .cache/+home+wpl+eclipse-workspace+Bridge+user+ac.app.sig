([("AccessControlEnabledMarker",[([DR_DUMMY],[("149970",True{IsGeneratedAnno})])]),("PrincipalDecl",[([DR_DUMMY],[("-609208",AccessControlPrincipal("User",["email","password"]))])]),("IsSessionEntityType",[(SimpleSort("SecurityContext"){DR_DUMMY},[("55925","SecurityContext")])]),("IsSession",[("securityContext",[("211674","securityContext")])]),("VarDecl",[("securityContext",[("-96595",SessionEntity("securityContext",[]){IsGeneratedAnno})])]),("ModuleDecl",[("user/ac",[("-500233",Module("user/ac",None))])]),("IsDerivedProperty",[(("SecurityContext","loggedIn"){DR_DUMMY},[("-261180","SecurityContext","loggedIn")])]),("TypeOf",[("securityContext",[("-27216","SecurityContext")])]),("GlobalFunctionArgs",[("createEmptySecurityContext",[("-80043",[])]),("castSecurityContext",[("-80043",[Arg("o",SimpleSort("Object"))])]),("loadSecurityContext",[("-80043",[Arg("prop",SimpleSort("UUID"))])]),("loggedIn",[("-80043",[])]),("principalAsEntity",[("-80043",[])])]),("CheckGlobalFunctionSignatureArgumentTypes",[((None{DR_DUMMY},"createEmptySecurityContext",[DR_DUMMY]){DR_DUMMY},[("184539",[])]),((None{DR_DUMMY},"castSecurityContext",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Object")])]),((None{DR_DUMMY},"loadSecurityContext",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("UUID")])]),((None{DR_DUMMY},"loggedIn",[DR_DUMMY]){DR_DUMMY},[("184539",[])]),((None{DR_DUMMY},"principalAsEntity",[DR_DUMMY]){DR_DUMMY},[("184539",[])])]),("FunctionDecl",[(("createEmptySecurityContext",[]){DR_DUMMY},[("-604693",Function("createEmptySecurityContext",[],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("castSecurityContext",[SimpleSort("Object")]){DR_DUMMY},[("-604693",Function("castSecurityContext",[Arg("o",SimpleSort("Object"))],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("loadSecurityContext",[SimpleSort("UUID")]){DR_DUMMY},[("-604693",Function("loadSecurityContext",[Arg("prop",SimpleSort("UUID"))],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("loggedIn",[]){DR_DUMMY},[("-604693",Function("loggedIn",[],SimpleSort("Bool"),None){IsGeneratedAnno})]),(("principalAsEntity",[]){DR_DUMMY},[("-604693",Function("principalAsEntity",[],SimpleSort("Entity"),None){IsGeneratedAnno})])]),("FunctionSig",[(("createEmptySecurityContext",[]),[("56986",Function("createEmptySecurityContext",[],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("castSecurityContext",[SimpleSort("Object")]),[("56986",Function("castSecurityContext",[Arg("o",SimpleSort("Object"))],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("loadSecurityContext",[SimpleSort("UUID")]),[("56986",Function("loadSecurityContext",[Arg("prop",SimpleSort("UUID"))],SimpleSort("SecurityContext"),None){IsGeneratedAnno})]),(("loggedIn",[]),[("56986",Function("loggedIn",[],SimpleSort("Bool"),None){IsGeneratedAnno})]),(("principalAsEntity",[]),[("56986",Function("principalAsEntity",[],SimpleSort("Entity"),None){IsGeneratedAnno})])]),("IsReservedFunction",[(("createEmptySecurityContext",0){DR_DUMMY},[("-223593","createEmptySecurityContext",0)]),(("castSecurityContext",0){DR_DUMMY},[("-223593","castSecurityContext",0)]),(("loadSecurityContext",1){DR_DUMMY},[("-223593","loadSecurityContext",1)]),(("loggedIn",0){DR_DUMMY},[("-223593","loggedIn",0)]),(("principalAsEntity",0){DR_DUMMY},[("-223593","principalAsEntity",0)])]),("EntityFunctionDeclStatic",[(("SecurityContext","all",[]){DR_DUMMY},[("-522133",Function("all",[],GenericSort("List",[SimpleSort("SecurityContext")]),None){IsGeneratedAnno})])]),("CheckFunctionSignatureArgumentTypesStatic",[((EntitySort("SecurityContext"){DR_DUMMY},"all",[DR_DUMMY]){DR_DUMMY},[("-289765",[])])]),("EntityIdType",[("SecurityContext",[("-114555",SimpleSort("UUID"){IsGeneratedAnno})])]),("EntityIdName",[("SecurityContext",[("-685821","id")])]),("EntityFunctionNoOverloading",[(("SecurityContext","setPrincipal"),[("-766728",[SimpleSort("User")])]),(("SecurityContext","$set$principal"),[("-766728",[SimpleSort("User")])]),(("SecurityContext","setLoggedIn"),[("-766728",[SimpleSort("Bool")])]),(("SecurityContext","$set$loggedIn"),[("-766728",[SimpleSort("Bool")])]),(("SecurityContext","SecurityContext"),[("-766728",[])]),(("SecurityContext","SecurityContext$this"),[("-766728",[])])]),("EntityFunctionDecl",[(("SecurityContext","validatePrincipal",[]){DR_DUMMY},[("-238744",Function("validatePrincipal",[],SimpleSort("ValidationExceptionMultiple"),None),"SecurityContext")]),(("SecurityContext","validatePrincipal_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validatePrincipal_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"SecurityContext")]),(("SecurityContext","allowedPrincipal",[]){DR_DUMMY},[("-238744",Function("allowedPrincipal",[],GenericSort("List",[SimpleSort("User")]),None),"SecurityContext")]),(("SecurityContext","setPrincipal",[SimpleSort("User")]){DR_DUMMY},[("-238744",Function("setPrincipal",[Arg("value",SimpleSort("User"))],SimpleSort("Void"),None),"SecurityContext")]),(("SecurityContext","$set$principal",[SimpleSort("User")]){DR_DUMMY},[("-238744",Function("$set$principal",[Arg("value",SimpleSort("User"))],SimpleSort("SecurityContext"),None),"SecurityContext")]),(("SecurityContext","validateLoggedIn",[]){DR_DUMMY},[("-238744",Function("validateLoggedIn",[],SimpleSort("ValidationExceptionMultiple"),None),"SecurityContext")]),(("SecurityContext","validateLoggedIn_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateLoggedIn_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"SecurityContext")]),(("SecurityContext","setLoggedIn",[SimpleSort("Bool")]){DR_DUMMY},[("-238744",Function("setLoggedIn",[Arg("value",SimpleSort("Bool"))],SimpleSort("Void"),None),"SecurityContext")]),(("SecurityContext","$set$loggedIn",[SimpleSort("Bool")]){DR_DUMMY},[("-238744",Function("$set$loggedIn",[Arg("value",SimpleSort("Bool"))],SimpleSort("SecurityContext"),None),"SecurityContext")]),(("SecurityContext","getName",[]){DR_DUMMY},[("-238744",Function("getName",[],SimpleSort("String"),None),"SecurityContext")]),(("SecurityContext","validateSave",[]){DR_DUMMY},[("-238744",Function("validateSave",[],SimpleSort("ValidationExceptionMultiple"),None),"SecurityContext")]),(("SecurityContext","SecurityContext",[]){DR_DUMMY},[("-238744",Function("SecurityContext",[],SimpleSort("Void"),None),"SecurityContext")]),(("SecurityContext","SecurityContext$this",[]){DR_DUMMY},[("-238744",Function("SecurityContext$this",[],SimpleSort("SecurityContext"),None),"SecurityContext")]),(("SecurityContext","all",[]){DR_DUMMY},[("-238744",Function("all",[],GenericSort("List",[SimpleSort("SecurityContext")]),None),"SecurityContext")])]),("CheckFunctionSignatureArgumentTypes",[((SimpleSort("SecurityContext"){DR_DUMMY},"validatePrincipal",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"validatePrincipal_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"allowedPrincipal",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"setPrincipal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("User")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"$set$principal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("User")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"validateLoggedIn",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"validateLoggedIn_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"setLoggedIn",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Bool")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"$set$loggedIn",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Bool")])]),((SimpleSort("SecurityContext"){DR_DUMMY},"getName",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"validateSave",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"SecurityContext",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"SecurityContext$this",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("SecurityContext"){DR_DUMMY},"all",[DR_DUMMY]){DR_DUMMY},[("124099",[]),("124099",[])])]),("AllProperties",[("SecurityContext",[("-165331","loggedIn"),("-165331","principal")])]),("PropertyDecl",[(("SecurityContext","principal"){DR_DUMMY},[("-737296",Property("principal",Ref,SimpleSort("User"),[]))]),(("SecurityContext","loggedIn"){DR_DUMMY},[("-737296",Property("loggedIn",Simple,SimpleSort("Bool"),[]))])]),("Properties",[("SecurityContext",[("-729684",DerivedProperty("loggedIn",Simple,SimpleSort("Bool"),[],None)),("-729684",Property("principal",Ref,SimpleSort("User"),[]))])]),("SubClass",[("Entity",[("-212836","SecurityContext")])]),("EntDecl",[("SecurityContext",[("-757442",Entity("SecurityContext","Entity",[]){IsGeneratedAnno})])])],[])