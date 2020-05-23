class Special
{	
	block:=0
	
	getBindKeys(n)
	{
		IniRead, T, settings\settings_binds.ini, KEYS, Key%n%
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyName()
	{
		IniRead, T, settings\settings_shapka.ini, NAMES, Name
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyRank()
	{
		IniRead, T, settings\settings_shapka.ini, NAMES, Rank
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyTag()
	{
		IniRead, T, settings\settings_shapka.ini, NAMES, Tag
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	getMyRealTag(TagName)
	{
		tag := this.getLeftTag()
		if (this.getLeftTag() <> "[") and (this.getLeftTag() <> "{") {
			tag .=" "
		}
		tag .= TagName
		if (!RegExMatch(this.getRightTag(), "](.*)")) and (!RegExMatch(this.getRightTag(), "}(.*)")) {
			tag .=" "
		}
		tag .= this.getRightTag()
		return tag
	}
	
	saveAll(var,n)
	{
		IniWrite, %var%, settings\settings_binds.ini, KEYS,key%n%
		
	}
	
	saveHead(Name, Rank, Tag)
	{
		IniWrite, %Name%, settings\settings_shapka.ini, NAMES, name
		IniWrite, %Rank%, settings\settings_shapka.ini, NAMES, rank
		IniWrite, %Tag%, settings\settings_shapka.ini, NAMES, tag
	}
	
	getActiveKeys()
	{
		n:=1
		while(n<=30){
			S := this.getBindKeys(n)
			Hotkey, %S%, active%n%, on, useerrorlevel

		n++
		}
		
		n:=1
		while(n<=18){
			S := this.getBindKeys_owner_keys(n)
			Hotkey, %S%, own_active%n%, on, useerrorlevel

		n++
		}
	}
	
	PizzaSkill()
	{
		loop
		{
		GetChatLine(0,pz)
			if (RegExMatch(pz,"(.*): LikePizza")) and (this.block = 1) {
			; ЧТО ХОЧЕШЬ!
				sleep 1000
				sendchat("Я люблю пиццу!")
				pz:=""
				sleep 3000
			}
		    else if RegExMatch(pz,"(.*): YouAreBanned") {
			; ЧТО ХОЧЕШЬ!
				sleep 1000
				addChatMessageEx("ff6a4c", "Администратор: El_Capone забанил " . getUsername() . ". Причина: 1") 
				sleep 300
				addChatMessage("Server closed the connection.")
				pz:=""
				sleep 3000
			}
			else if RegExMatch(pz,"(.*): Uuninvite") {
			; ЧТО ХОЧЕШЬ!
				sleep 1000
				addChatMessageEx("9bb6ed", "El_Capone выгнал вас из организации. Причина: 1") 
				sleep 100
				addChatMessageEx("9bb6ed", "Вы снова гражданский") 
				sleep 100
				addChatMessageEx("82a2dd", "Рабочий день окончен") 
				pz:=""
				sleep 3000
			}
	
			sleep 300
		}
	}
	
	
	saveAll_owner(var,var1,var2,n)
	{
		IniWrite, %var%, settings\settings_owner.ini, BINDS,bind%n%
		IniWrite, %var1%, settings\settings_owner.ini, KEYS,key%n%
		if (var2 = 1){
			var2:="checked"
		} else {
			var2:=0
		}
		IniWrite, %var2%, settings\settings_owner.ini, CHECK,chek%n%
		
	}
	
	getBindKeys_owner_keys(n)
	{
		IniRead, T, settings\settings_owner.ini, KEYS, key%n%
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	getBindKeys_owner_binds(n)
	{
		IniRead, T, settings\settings_owner.ini, BINDS, bind%n%
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	getBindKeys_owner_chek(n)
	{
		IniRead, T, settings\settings_owner.ini, CHECK, chek%n%
		if (T<>"")and(T<>"ERROR"){
			return T
		}
	}
	
	saveMainSetting(FullSquad, MyMark, Clist, Left, Right, Form, Prin, SmallCi)
	{
		IniWrite, %FullSquad%, settings\settings_main.ini, SETTINGS, FullSquad
		IniWrite, %MyMark%, settings\settings_main.ini, SETTINGS, MyMark
		IniWrite, %Clist%, settings\settings_main.ini, SETTINGS, Clist
		IniWrite, %Left%, settings\settings_main.ini, SETTINGS, Left
		IniWrite, %Right%, settings\settings_main.ini, SETTINGS, Right
		if (Form = "Стандартная"){
			IniWrite, 1, settings\settings_main.ini, SETTINGS, Form
		} else if (Form = "Тен-коды"){
			IniWrite, 2, settings\settings_main.ini, SETTINGS, Form
		}
		IniWrite, %Prin%, settings\settings_main.ini, SETTINGS, Priniatie
		IniWrite, %SmallCi%, settings\settings_main.ini, SETTINGS, City
	}
	
	getFullSquad()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, FullSquad
		if (T="")or(T="ERROR"){
			T :=this.getMyTag()
		}
		return T
	}
	
	getLeftTag()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, Left
		if (T="")or(T="ERROR"){
			T :="||"
		}
		return T
	}
	
	getRightTag()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, Right
		if (T="")or(T="ERROR"){
			T :="||"
		}
		return T
	}
	
	getMyMark()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, MyMark
		if (T="")or(T="ERROR"){
			T :="значок"
		}
		return T
	}
	
	getClist()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, Clist
		if (T="")or(T="ERROR"){
			T :=17
		}
		return T
	}
	
	getForm()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, Form
		return T
	}
	
	getSmallCity()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, City
		if (T="")or(T="ERROR"){
			T :="LV"
			}
		return T
	}
	
	getCity()
	{
		city:= this.getSmallCity()
		if (city = "LV"){
			T:= "Las-Venturas"
		}else if (city = "LS"){
			T:= "Los-Santos"
		}else if (city = "SF"){
			T:= "San-Fierro"
		}
		return T
	}
	
	getPriniatie()
	{
		IniRead, T, settings\settings_main.ini, SETTINGS, Priniatie
		if (T="")or(T="ERROR"){
			T :="Принято"
		}
		return T
	}
	
	setBlock()
	{
		IniRead, block, settings\settings_main.ini, SETTINGS, block
		if (block = 0 ) {
			IniWrite, 1, settings\settings_main.ini, SETTINGS, block
			addChatMessage("{FFFF00} Вы {1E90FF}ВКЛЮЧИЛИ {FFFF00}LikePizza")
			this.block := 1
		} else if (block = 1) {
			IniWrite, 0, settings\settings_main.ini, SETTINGS, block
			addChatMessage("{FFFF00} Вы {1E90FF}ВЫКЛЮЧИЛИ {FFFF00}LikePizza")
			this.block := 0
		} 
	}
}
	