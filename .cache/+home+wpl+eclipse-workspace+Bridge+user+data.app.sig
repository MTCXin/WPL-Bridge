([("InverseProperty",[(("User","boards"){DR_DUMMY},[("-333074","Boards","player")]),(("Boards","player"){DR_DUMMY},[("-333074","User","boards")])]),("TypeOfProperty",[(("User","boardsList"){DR_DUMMY},[("-354650",GenericSort("List",[SimpleSort("Boards")]))])]),("ModuleDecl",[("user/data",[("-500233",Module("user/data",None))])]),("HasNaturalId",[("User",[("-8018","User")])]),("GlobalFunctionArgs",[("getUniqueUser",[("-80043",[Arg("name",SimpleSort("Email"))])]),("isUniqueUser",[("-80043",[Arg("object",SimpleSort("User"))])]),("isUniqueUserId",[("-80043",[Arg("name",SimpleSort("Email")),Arg("object",SimpleSort("User"))]),("-80043",[Arg("name",SimpleSort("Email"))])]),("findUser",[("-80043",[Arg("theid",SimpleSort("Email"))])]),("findUserByUsername",[("-80043",[Arg("prop",SimpleSort("String"))])]),("findUserByUsernameLike",[("-80043",[Arg("prop",SimpleSort("String"))])]),("findUserByEmail",[("-80043",[Arg("prop",SimpleSort("Email"))])]),("findUserByEmailLike",[("-80043",[Arg("prop",SimpleSort("Email"))])]),("findUserByPassword",[("-80043",[Arg("prop",SimpleSort("Secret"))])]),("findUserByPasswordLike",[("-80043",[Arg("prop",SimpleSort("Secret"))])]),("findUserByConvention",[("-80043",[Arg("prop",SimpleSort("WikiText"))])]),("findUserByConventionLike",[("-80043",[Arg("prop",SimpleSort("WikiText"))])]),("createEmptyUser",[("-80043",[])]),("castUser",[("-80043",[Arg("o",SimpleSort("Object"))])]),("loadUser",[("-80043",[Arg("prop",SimpleSort("Email"))])])]),("CheckGlobalFunctionSignatureArgumentTypes",[((None{DR_DUMMY},"getUniqueUser",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email")])]),((None{DR_DUMMY},"isUniqueUser",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("User")])]),((None{DR_DUMMY},"isUniqueUserId",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email"),SimpleSort("User")]),("184539",[SimpleSort("Email")])]),((None{DR_DUMMY},"findUser",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email")])]),((None{DR_DUMMY},"findUserByUsername",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("String")])]),((None{DR_DUMMY},"findUserByUsernameLike",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("String")])]),((None{DR_DUMMY},"findUserByEmail",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email")])]),((None{DR_DUMMY},"findUserByEmailLike",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email")])]),((None{DR_DUMMY},"findUserByPassword",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Secret")])]),((None{DR_DUMMY},"findUserByPasswordLike",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Secret")])]),((None{DR_DUMMY},"findUserByConvention",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("WikiText")])]),((None{DR_DUMMY},"findUserByConventionLike",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("WikiText")])]),((None{DR_DUMMY},"createEmptyUser",[DR_DUMMY]){DR_DUMMY},[("184539",[])]),((None{DR_DUMMY},"castUser",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Object")])]),((None{DR_DUMMY},"loadUser",[DR_DUMMY]){DR_DUMMY},[("184539",[SimpleSort("Email")])])]),("FunctionDecl",[(("getUniqueUser",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("getUniqueUser",[Arg("name",SimpleSort("Email"))],SimpleSort("User"),None))]),(("isUniqueUser",[SimpleSort("User")]){DR_DUMMY},[("-604693",Function("isUniqueUser",[Arg("object",SimpleSort("User"))],SimpleSort("Bool"),None))]),(("isUniqueUserId",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("isUniqueUserId",[Arg("name",SimpleSort("Email"))],SimpleSort("Bool"),None))]),(("isUniqueUserId",[SimpleSort("Email"),SimpleSort("User")]){DR_DUMMY},[("-604693",Function("isUniqueUserId",[Arg("name",SimpleSort("Email")),Arg("object",SimpleSort("User"))],SimpleSort("Bool"),None))]),(("findUser",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("findUser",[Arg("theid",SimpleSort("Email"))],SimpleSort("User"),None))]),(("findUserByUsername",[SimpleSort("String")]){DR_DUMMY},[("-604693",Function("findUserByUsername",[Arg("prop",SimpleSort("String"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByUsernameLike",[SimpleSort("String")]){DR_DUMMY},[("-604693",Function("findUserByUsernameLike",[Arg("prop",SimpleSort("String"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByEmail",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("findUserByEmail",[Arg("prop",SimpleSort("Email"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByEmailLike",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("findUserByEmailLike",[Arg("prop",SimpleSort("Email"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByPassword",[SimpleSort("Secret")]){DR_DUMMY},[("-604693",Function("findUserByPassword",[Arg("prop",SimpleSort("Secret"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByPasswordLike",[SimpleSort("Secret")]){DR_DUMMY},[("-604693",Function("findUserByPasswordLike",[Arg("prop",SimpleSort("Secret"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByConvention",[SimpleSort("WikiText")]){DR_DUMMY},[("-604693",Function("findUserByConvention",[Arg("prop",SimpleSort("WikiText"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByConventionLike",[SimpleSort("WikiText")]){DR_DUMMY},[("-604693",Function("findUserByConventionLike",[Arg("prop",SimpleSort("WikiText"))],GenericSort("List",[SimpleSort("User")]),None))]),(("createEmptyUser",[]){DR_DUMMY},[("-604693",Function("createEmptyUser",[],SimpleSort("User"),None))]),(("castUser",[SimpleSort("Object")]){DR_DUMMY},[("-604693",Function("castUser",[Arg("o",SimpleSort("Object"))],SimpleSort("User"),None))]),(("loadUser",[SimpleSort("Email")]){DR_DUMMY},[("-604693",Function("loadUser",[Arg("prop",SimpleSort("Email"))],SimpleSort("User"),None))])]),("FunctionSig",[(("getUniqueUser",[SimpleSort("Email")]),[("56986",Function("getUniqueUser",[Arg("name",SimpleSort("Email"))],SimpleSort("User"),None))]),(("isUniqueUser",[SimpleSort("User")]),[("56986",Function("isUniqueUser",[Arg("object",SimpleSort("User"))],SimpleSort("Bool"),None))]),(("isUniqueUserId",[SimpleSort("Email")]),[("56986",Function("isUniqueUserId",[Arg("name",SimpleSort("Email"))],SimpleSort("Bool"),None))]),(("isUniqueUserId",[SimpleSort("Email"),SimpleSort("User")]),[("56986",Function("isUniqueUserId",[Arg("name",SimpleSort("Email")),Arg("object",SimpleSort("User"))],SimpleSort("Bool"),None))]),(("findUser",[SimpleSort("Email")]),[("56986",Function("findUser",[Arg("theid",SimpleSort("Email"))],SimpleSort("User"),None))]),(("findUserByUsername",[SimpleSort("String")]),[("56986",Function("findUserByUsername",[Arg("prop",SimpleSort("String"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByUsernameLike",[SimpleSort("String")]),[("56986",Function("findUserByUsernameLike",[Arg("prop",SimpleSort("String"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByEmail",[SimpleSort("Email")]),[("56986",Function("findUserByEmail",[Arg("prop",SimpleSort("Email"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByEmailLike",[SimpleSort("Email")]),[("56986",Function("findUserByEmailLike",[Arg("prop",SimpleSort("Email"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByPassword",[SimpleSort("Secret")]),[("56986",Function("findUserByPassword",[Arg("prop",SimpleSort("Secret"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByPasswordLike",[SimpleSort("Secret")]),[("56986",Function("findUserByPasswordLike",[Arg("prop",SimpleSort("Secret"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByConvention",[SimpleSort("WikiText")]),[("56986",Function("findUserByConvention",[Arg("prop",SimpleSort("WikiText"))],GenericSort("List",[SimpleSort("User")]),None))]),(("findUserByConventionLike",[SimpleSort("WikiText")]),[("56986",Function("findUserByConventionLike",[Arg("prop",SimpleSort("WikiText"))],GenericSort("List",[SimpleSort("User")]),None))]),(("createEmptyUser",[]),[("56986",Function("createEmptyUser",[],SimpleSort("User"),None))]),(("castUser",[SimpleSort("Object")]),[("56986",Function("castUser",[Arg("o",SimpleSort("Object"))],SimpleSort("User"),None))]),(("loadUser",[SimpleSort("Email")]),[("56986",Function("loadUser",[Arg("prop",SimpleSort("Email"))],SimpleSort("User"),None))])]),("IsReservedFunction",[(("isUniqueUserId",2){DR_DUMMY},[("-223593","isUniqueUserId",2)]),(("getUniqueUser",1){DR_DUMMY},[("-223593","getUniqueUser",1)]),(("isUniqueUser",1){DR_DUMMY},[("-223593","isUniqueUser",1)]),(("isUniqueUserId",1){DR_DUMMY},[("-223593","isUniqueUserId",1)]),(("findUser",1){DR_DUMMY},[("-223593","findUser",1)]),(("findUserByUsername",1){DR_DUMMY},[("-223593","findUserByUsername",1)]),(("findUserByUsernameLike",1){DR_DUMMY},[("-223593","findUserByUsernameLike",1)]),(("findUserByEmail",1){DR_DUMMY},[("-223593","findUserByEmail",1)]),(("findUserByEmailLike",1){DR_DUMMY},[("-223593","findUserByEmailLike",1)]),(("findUserByPassword",1){DR_DUMMY},[("-223593","findUserByPassword",1)]),(("findUserByPasswordLike",1){DR_DUMMY},[("-223593","findUserByPasswordLike",1)]),(("findUserByConvention",1){DR_DUMMY},[("-223593","findUserByConvention",1)]),(("findUserByConventionLike",1){DR_DUMMY},[("-223593","findUserByConventionLike",1)]),(("createEmptyUser",0){DR_DUMMY},[("-223593","createEmptyUser",0)]),(("castUser",0){DR_DUMMY},[("-223593","castUser",0)]),(("loadUser",1){DR_DUMMY},[("-223593","loadUser",1)])]),("EntityFunctionDeclStatic",[(("User","all",[]){DR_DUMMY},[("-522133",Function("all",[],GenericSort("List",[SimpleSort("User")]),None))])]),("CheckFunctionSignatureArgumentTypesStatic",[((EntitySort("User"){DR_DUMMY},"all",[DR_DUMMY]){DR_DUMMY},[("-289765",[])])]),("EntityIdType",[("User",[("-114555",SimpleSort("Email"))])]),("EntityIdName",[("User",[("-685821","email")])]),("EntityFunctionNoOverloading",[(("User","setUsername"),[("-766728",[SimpleSort("String")])]),(("User","$set$username"),[("-766728",[SimpleSort("String")])]),(("User","setEmail"),[("-766728",[SimpleSort("Email")])]),(("User","$set$email"),[("-766728",[SimpleSort("Email")])]),(("User","setPassword"),[("-766728",[SimpleSort("Secret")])]),(("User","$set$password"),[("-766728",[SimpleSort("Secret")])]),(("User","setConvention"),[("-766728",[SimpleSort("WikiText")])]),(("User","$set$convention"),[("-766728",[SimpleSort("WikiText")])]),(("User","setIsManager"),[("-766728",[SimpleSort("Bool")])]),(("User","$set$isManager"),[("-766728",[SimpleSort("Bool")])]),(("User","addToBoards"),[("-766728",[SimpleSort("Boards")])]),(("User","removeFromBoards"),[("-766728",[SimpleSort("Boards")])]),(("User","replaceAllBoards"),[("-766728",[GenericSort("Set",[SimpleSort("Boards")])])]),(("User","User"),[("-766728",[])]),(("User","User$this"),[("-766728",[])])]),("EntityFunctionDecl",[(("User","validateUsername",[]){DR_DUMMY},[("-238744",Function("validateUsername",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validateUsername_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateUsername_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","setUsername",[SimpleSort("String")]){DR_DUMMY},[("-238744",Function("setUsername",[Arg("value",SimpleSort("String"))],SimpleSort("Void"),None),"User")]),(("User","$set$username",[SimpleSort("String")]){DR_DUMMY},[("-238744",Function("$set$username",[Arg("value",SimpleSort("String"))],SimpleSort("User"),None),"User")]),(("User","validateEmail",[]){DR_DUMMY},[("-238744",Function("validateEmail",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validateEmail_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateEmail_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","setEmail",[SimpleSort("Email")]){DR_DUMMY},[("-238744",Function("setEmail",[Arg("value",SimpleSort("Email"))],SimpleSort("Void"),None),"User")]),(("User","$set$email",[SimpleSort("Email")]){DR_DUMMY},[("-238744",Function("$set$email",[Arg("value",SimpleSort("Email"))],SimpleSort("User"),None),"User")]),(("User","validatePassword",[]){DR_DUMMY},[("-238744",Function("validatePassword",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validatePassword_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validatePassword_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","setPassword",[SimpleSort("Secret")]){DR_DUMMY},[("-238744",Function("setPassword",[Arg("value",SimpleSort("Secret"))],SimpleSort("Void"),None),"User")]),(("User","$set$password",[SimpleSort("Secret")]){DR_DUMMY},[("-238744",Function("$set$password",[Arg("value",SimpleSort("Secret"))],SimpleSort("User"),None),"User")]),(("User","validateConvention",[]){DR_DUMMY},[("-238744",Function("validateConvention",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validateConvention_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateConvention_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","setConvention",[SimpleSort("WikiText")]){DR_DUMMY},[("-238744",Function("setConvention",[Arg("value",SimpleSort("WikiText"))],SimpleSort("Void"),None),"User")]),(("User","$set$convention",[SimpleSort("WikiText")]){DR_DUMMY},[("-238744",Function("$set$convention",[Arg("value",SimpleSort("WikiText"))],SimpleSort("User"),None),"User")]),(("User","validateIsManager",[]){DR_DUMMY},[("-238744",Function("validateIsManager",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validateIsManager_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateIsManager_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","setIsManager",[SimpleSort("Bool")]){DR_DUMMY},[("-238744",Function("setIsManager",[Arg("value",SimpleSort("Bool"))],SimpleSort("Void"),None),"User")]),(("User","$set$isManager",[SimpleSort("Bool")]){DR_DUMMY},[("-238744",Function("$set$isManager",[Arg("value",SimpleSort("Bool"))],SimpleSort("User"),None),"User")]),(("User","validateBoards",[]){DR_DUMMY},[("-238744",Function("validateBoards",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","validateBoards_internal",[SimpleSort("ValidationExceptionMultiple")]){DR_DUMMY},[("-238744",Function("validateBoards_internal",[Arg("v",SimpleSort("ValidationExceptionMultiple"))],SimpleSort("Void"),None),"User")]),(("User","allowedBoards",[]){DR_DUMMY},[("-238744",Function("allowedBoards",[],GenericSort("List",[SimpleSort("Boards")]),None),"User")]),(("User","addToBoards",[SimpleSort("Boards")]){DR_DUMMY},[("-238744",Function("addToBoards",[Arg("value",SimpleSort("Boards"))],SimpleSort("Void"),None),"User")]),(("User","removeFromBoards",[SimpleSort("Boards")]){DR_DUMMY},[("-238744",Function("removeFromBoards",[Arg("value",SimpleSort("Boards"))],SimpleSort("Void"),None),"User")]),(("User","replaceAllBoards",[GenericSort("Set",[SimpleSort("Boards")])]){DR_DUMMY},[("-238744",Function("replaceAllBoards",[Arg("value",GenericSort("Set",[SimpleSort("Boards")]))],SimpleSort("User"),None),"User")]),(("User","getName",[]){DR_DUMMY},[("-238744",Function("getName",[],SimpleSort("String"),None),"User")]),(("User","validateSave",[]){DR_DUMMY},[("-238744",Function("validateSave",[],SimpleSort("ValidationExceptionMultiple"),None),"User")]),(("User","User",[]){DR_DUMMY},[("-238744",Function("User",[],SimpleSort("Void"),None),"User")]),(("User","User$this",[]){DR_DUMMY},[("-238744",Function("User$this",[],SimpleSort("User"),None),"User")]),(("User","all",[]){DR_DUMMY},[("-238744",Function("all",[],GenericSort("List",[SimpleSort("User")]),None),"User")])]),("CheckFunctionSignatureArgumentTypes",[((SimpleSort("User"){DR_DUMMY},"validateUsername",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateUsername_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"setUsername",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("String")])]),((SimpleSort("User"){DR_DUMMY},"$set$username",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("String")])]),((SimpleSort("User"){DR_DUMMY},"validateEmail",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateEmail_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"setEmail",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Email")])]),((SimpleSort("User"){DR_DUMMY},"$set$email",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Email")])]),((SimpleSort("User"){DR_DUMMY},"validatePassword",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validatePassword_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"setPassword",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Secret")])]),((SimpleSort("User"){DR_DUMMY},"$set$password",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Secret")])]),((SimpleSort("User"){DR_DUMMY},"validateConvention",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateConvention_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"setConvention",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("WikiText")])]),((SimpleSort("User"){DR_DUMMY},"$set$convention",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("WikiText")])]),((SimpleSort("User"){DR_DUMMY},"validateIsManager",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateIsManager_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"setIsManager",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Bool")])]),((SimpleSort("User"){DR_DUMMY},"$set$isManager",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Bool")])]),((SimpleSort("User"){DR_DUMMY},"validateBoards",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateBoards_internal",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("ValidationExceptionMultiple")])]),((SimpleSort("User"){DR_DUMMY},"allowedBoards",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"addToBoards",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Boards")])]),((SimpleSort("User"){DR_DUMMY},"removeFromBoards",[DR_DUMMY]){DR_DUMMY},[("124099",[SimpleSort("Boards")])]),((SimpleSort("User"){DR_DUMMY},"replaceAllBoards",[DR_DUMMY]){DR_DUMMY},[("124099",[GenericSort("Set",[SimpleSort("Boards")])])]),((SimpleSort("User"){DR_DUMMY},"getName",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"validateSave",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"User",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"User$this",[DR_DUMMY]){DR_DUMMY},[("124099",[])]),((SimpleSort("User"){DR_DUMMY},"all",[DR_DUMMY]){DR_DUMMY},[("124099",[]),("124099",[])])]),("AllProperties",[("User",[("-165331","boards"),("-165331","isManager"),("-165331","convention"),("-165331","password"),("-165331","email"),("-165331","username")])]),("PropertyDecl",[(("User","username"){DR_DUMMY},[("-737296",Property("username",Simple,SimpleSort("String"),[SimpleAnno("name")]))]),(("User","email"){DR_DUMMY},[("-737296",Property("email",Simple,SimpleSort("Email"),[SimpleAnno("id"),ValidateAnno(ThisCall("isUniqueUser",[Var("this")]),String("Email is takem"))]))]),(("User","password"){DR_DUMMY},[("-737296",Property("password",Simple,SimpleSort("Secret"),[ValidateAnno(LargerThanOrEqual(Call(Var("password"),"length",[]),Int("8")),String("Password needs to be at least 8 chars!"))]))]),(("User","convention"){DR_DUMMY},[("-737296",Property("convention",Simple,SimpleSort("WikiText"),[]))]),(("User","isManager"){DR_DUMMY},[("-737296",Property("isManager",Simple,SimpleSort("Bool"),[]))]),(("User","boards"){DR_DUMMY},[("-737296",Property("boards",Ref,GenericSort("Set",[SimpleSort("Boards")]),[InverseAnno("Boards","player")]))])]),("Properties",[("User",[("-729684",Property("boards",Ref,GenericSort("Set",[SimpleSort("Boards")]),[InverseAnno("Boards","player")])),("-729684",Property("isManager",Simple,SimpleSort("Bool"),[])),("-729684",Property("convention",Simple,SimpleSort("WikiText"),[])),("-729684",Property("password",Simple,SimpleSort("Secret"),[ValidateAnno(LargerThanOrEqual(Call(Var("password"),"length",[]),Int("8")),String("Password needs to be at least 8 chars!"))])),("-729684",Property("email",Simple,SimpleSort("Email"),[SimpleAnno("id"),ValidateAnno(ThisCall("isUniqueUser",[Var("this")]),String("Email is takem"))])),("-729684",Property("username",Simple,SimpleSort("String"),[SimpleAnno("name")]))])]),("SubClass",[("Entity",[("-212836","User")])]),("EntDecl",[("User",[("-757442",Entity("User","Entity",[]))])])],[])