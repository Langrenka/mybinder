class Binds
{
	status_binda:=0
	
	getUK()
	{
		UKK:="{8B0000}========================УК====================`n"
		loop, read, files/data/UK.txt
		{
		UKK.= A_LoopReadLine "`n"
		}
		showDialog(2, "УК", UKK, "Ок") ;
		UKK :=""
	}
	
	getAK()
	{
		AKK:="{8B0000}========================АК====================`n"
		loop, read, files/data/AK.txt
		{
		AKK.= A_LoopReadLine "`n"
		}
		showDialog(2, "АК", AKK, "Ок") ;
		AKK :=""
	}
	
	getTens()
	{
		tens:="{8B0000}========================TEN-CODE====================`n"
		loop, read, files/data/Tens.txt
		{
		tens.= A_LoopReadLine "`n"
		}
		showDialog(2, "TEN-CODE", tens, "Ок") ;
		tens :=""
	}
	
	bomb_time1()
	{
		loop, read, files/data/bomb1.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
		addChatMessage("{FFFF00}Если {1E90FF}НЕУДАЧНО {FFFF00}- введите {1E90FF}/bomb12")
	}
	
	bomb_time2()
	{
		loop, read, files/data/bomb12.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
		addChatMessage("{FFFF00}Если {1E90FF}НЕУДАЧНО {FFFF00}- введите {1E90FF}/bomb12")
	}

	bomb_dist()
	{
		loop, read, files/data/bomb2.txt
		{
		sendchat(A_LoopReadLine)
		sleep 2000
		}
	}
	
	ToPatrol(tag, Forma,smallCity)
	{
		if (isPlayerInAnyVehicle()){
			if (Forma = 2){
				pas := getIdPassengersId() 
				sendinput {f6}/r %tag% Э:%pas%. 10-3
			} else {
				pas := getIdPassengersName()
				sendinput {f6}/r %tag% Выехал(а) в патруль %smallCity%. Напарники:%pas%
			}
		}
	}
	
	InPatrol(tag, Forma, smallCity)
	{
		if (isPlayerInAnyVehicle()){
			if (Forma = 2){
				pas := getIdPassengersId() 
				kv:=getPlayerZone() 
				sendinput {f6}/r %tag% Э:%pas%. 10-4 %kv% | Code 0
			} else {
				pas := getIdPassengersName()
				sendinput {f6}/r %tag% Патруль %smallCity%. Напарники:%pas%. Состояние: спокойно
			}
		}
	}
	
	OutPatrol(tag, Forma, smallCity)
	{
		if (isPlayerInAnyVehicle()){
			if (Forma = 2){
				pas := getIdPassengersId() 
				sendinput {f6}/r %tag% Э:%pas%. 10-3R.{space} 
			} else {
				pas := getIdPassengersName()
				sendinput {f6}/r %tag% Завершил(а) патруль %smallCity%. Напарники:%pas%. Причина:{space}
			}
		}
	}
	
	getKeys(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29,k30)
	{
		help:="{8B0000}========================Кнопки====================`n"
		help.="{FF0000}" k1 "{FFF8DC} - Указать Тэг в рацию`n"
		help.="{FF0000}" k2 "{FFF8DC} - Принято, работаем!`n"
		help.="{FF0000}" k3 "{FFF8DC} - /su`n"
		help.="{FF0000}" k4 "{FFF8DC} - Отыгровка /cuff`n"
		help.="{FF0000}" k5 "{FFF8DC} - Отыгровка /cput`n"
		help.="{FF0000}" k6 "{FFF8DC} - Отыгровка /ceject`n"
		help.="{FF0000}" k7 "{FFF8DC} - Отыгровка /follow`n"
		help.="{FF0000}" k8 "{FFF8DC} - Мегафон в погоне`n"
		help.="{FF0000}" k9 "{FFF8DC} - Надеть маску`n"
		help.="{FF0000}" k10 "{FFF8DC} - Снять маску`n"
		help.="{FF0000}" k11 "{FFF8DC} - Отыгровка /take`n"
		help.="{FF0000}" k12 "{FFF8DC} - Зачитать права`n"
		help.="{FF0000}" k13 "{FFF8DC} - Выезд в патруль`n"
		help.="{FF0000}" k14 "{FFF8DC} - Состояние патруля`n"
		help.="{FF0000}" k15 "{FFF8DC} - Завершение патруля`n"
		help.="{FF0000}" k16 "{FFF8DC} - СОС в рацию`n"
		help.="{FF0000}" k17 "{FFF8DC} - Квадрат погони в рацию`n"
		help.="{FF0000}" k18 "{FFF8DC} - Ответ на предыдущее СМС`n"
		help.="{FF0000}" k19 "{FFF8DC} - Подача в ООП по ID`n"
		help.="{FF0000}" k20 "{FFF8DC} - /lock`n"
		help.="{FF0000}" k21 "{FFF8DC} - /time + скрин`n"
		help.="{FF0000}" k22 "{FFF8DC} - Представиться`n"
		help.="{FF0000}" k23 "{FFF8DC} - Отыгровка штрафа`n"
		help.="{FF0000}" k24 "{FFF8DC} - Розыск в перестрелке`n"
		help.="{FF0000}" k25 "{FFF8DC} - *Не работает*`n"
		help.="{FF0000}" k26 "{FFF8DC} - *Не работает*`n"
		help.="{FF0000}" k27 "{FFF8DC} - *Не работает*`n"
		help.="{FF0000}" k28 "{FFF8DC} - *Не работает*`n"
		help.="{FF0000}" k29 "{FFF8DC} - *Не работает*`n"
		help.="{FF0000}" k30 "{FFF8DC} - *Не работает*`n"
		help.="{8B0000}========================Служебные==================`n"
		help.="{FF0000}F11{FFF8DC} - Открыть окно биндера`n"
		help.="{FF0000}F12{FFF8DC} - Перезагрузить`n"
		help.="{8B0000}========================Команды====================`n"
		help.="{FF0000}/Bomb1{FFF8DC} - Размин. бомб с таймером`n"
		help.="{FF0000}/Bomb2{FFF8DC} - Размин. бомб с дистанцион.`n"
		help.="{FF0000}//UK{FFF8DC} - Шпаргалка УК`n"
		help.="{FF0000}//AK{FFF8DC} - Шпаргался АК`n"
		help.="{FF0000}//Tens{FFF8DC} - Шпаргался TEN-CODES`n"
		help.="{FF0000}/helpGhost{FFF8DC} - Все кнопки и команды"
		showDialog(2, "Шпора", help, "Ок") 

	}
	
	toR(tag)
	{
		sendinput {f6}/r %tag%{space}
	}
	
	getReady(tag, Forma,Priniatie)
	{
		if (Forma = 2) {
			sendchat("/r " . tag . " 10-5")
		}else {
			sendchat("/r " . tag . " " . Priniatie . "")
		}
	}
	
	toSU()
	{
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sendinput {f6}/su %var%{space}
		} else {
			sendinput {f6}/su{space}
		}
	}
	
	toCuff()
	{
		sendchat("/me снял(а) с пояса наручники")
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sleep 2000
			sendchat("/cuff "var)
		}else{
			sendinput {f6}/cuff{space}
		}
	}
	
	
	toCput()
	{
		sendchat("/me посадил(а) человека в автомобиль")
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sleep 2000
			sendchat("/cput "var)
		}else {
			sendinput {f6}/cput{space}
		}
	}
	
	
	toCeject()
	{
		sendchat("/me высадил(а) человека из автомобиля")
		sendinput {f6}/ceject{space}
	}
	
	toFollow()
	{
		sendchat("/me прицепил(а) человека наручниками к себе")
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sleep 2000
			sendchat("/follow "var)
		} else {
			sendinput {f6}/follow{space}
		}
	}
	
	toM()
	{
		sendchat("/m Водитель! Немедлено прижмитесь к обочине! Или мы откроем огонь!")
	}
	
	getMask(FullSquad, clist, mark)
	{
		sendchat("/clist " . clist . "")
		sleep 1000
		sendchat("/seeme надел(а) " . mark . " " . FullSquad . "")
	}
	
	TakeOutMask(FullSquad, mark)
	{
		sendchat("/clist 0")
		sleep 1000
		sendchat("/seeme снял(а) " . mark . " " . FullSquad . "")
	}
	
	toTake()
	{
		sendchat("/me надел(а) резиновые перчатки")
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sleep 2000
			sendchat("/take "var)
		} else {
			sendinput {f6}/take{space}
		}
	}
	
	Miranda()
	{
		loop, read, files/data/miranda.txt
		{
			sendchat(A_LoopReadLine)
			sleep 3100
		}
	}
	
	giveSOS(tag, Forma)
	{
		if (Forma = 2){
			ag:=getPlayerZone() 
			sendchat("/r " . tag . " 10-66 " . ag . "")
		} else {
			ag:=getPlayerZone() 
			sendchat("/r " . tag . " СОС " . ag . "")
		}
	}
	
	
	giveCordPogon(tag, Forma)
	{
		if (Forma = 2){
			ag:=getPlayerZone() 
			sendchat("/r " . tag . " 10-55. " . ag . " 10-66")
		} else {
			ag:=getPlayerZone() 
			sendchat("/r " . tag . " Веду погоню в секторе " . ag . " Нужна помощь!")
		}
	}
	
	giveLastSMS()
	{
		izi:="-1"
		File = %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
		Loop, Read, %File%
		{
			if RegExMatch(A_LoopReadLine, "Отправитель:\s[A-Za-z_0-9]*?\[(\d+)\]", id)
				izi:=id1
		}
		if (izi!="-1")
			Sendinput {F6}/t %izi%{space}
	}
	
	toOOP()
	{
		SendMessage, 0x50,, 0x4190419,, A
		sendinput {f6}/oop{space}
		Input, oop, V,  {Enter}
		RegExMatch(oop,"(.*) (.*)", oop)
		oop_Name:=getPlayerNameById(oop1)
		if (oop1 >=0) and (oop1<=1000) and (oop_Name<>"") {
			oop_Pname := RegExReplace(oop_Name, "\_.*", "") ; Его имя
			oop_PSname := RegExReplace(oop_Name, ".*_", "") ; Его фамилия
			addChatMessage("{B22222}[Mayor] Код №" . oop1 . " " . oop_Pname . " " . oop_PSname . " - ООП по статье " . oop2 . " УК СА")
			sendinput {f6}/dep [Mayor] Дело №%oop1% %oop_Pname% %oop_PSname% - ООП по статье %oop2% УК СА
		} else {
			addChatMessage("Несуществующий ID или статья")
	}
	}
	
	toLock()
	{
		sendchat("/lock")
	}
	
	takeScreen()
	{
		sendchat("/time")
		sleep 500
		sendinput {f8}
	}
	
	giveMyName(RankName, NameName, FullSquad, city, smallCity)
	{
		Pname := RegExReplace(NameName, "\_.*", "") 
		PSname := RegExReplace(NameName, ".*_", "")
		sendchat("" . RankName . " полиции " . city . ", " . Pname . " " . PSname . "")
		sleep 2000
		sendchat("/do На груди значок " . smallCity . "PD || " . FullSquad . "")
	}
	
	toTicket()
	{
		var := getIdByPed(getTargetPed()) 
		sendchat("/me достал(а) бланк для штрафа и ручку")
		sleep 2000
		sendchat("/me заполнил(а) бланк") 
		if (var >= 0) and (var <= 1000) {
			sendinput {f6}/ticket %var%{space}
		}else {
			sendinput {f6}/ticket{space}
		}
	}
	
	FireSU()
	{
		var := getIdByPed(getTargetPed()) 
		if (var >= 0) and (var <= 1000) {
			sendchat("/su " . var . " 4 2.2")
			addchatmessage("/su " . var . " 4 2.2")
		} else {
			addchatmessage("{1E90FF}[AHK]: {FF0000}Ошибка.")
		}
	}
	
	getOwnBind(n)
	{
		IniRead, T, settings\settings_owner.ini, CHECK, chek%n%
		IniRead, S, settings\settings_owner.ini, BINDS, bind%n%
		if (T = "checked"){
			sendchat(S)
		} else {
			sendinput {f6}%S%{space}
		}
	}
	
	getLecture()
	{
	this.status_binda:=1
	kstr:=1
	Loop, files/lectures/*.txt,0,0
	{
		if A_LoopFileName <> ""
		{
			str%kstr%:=A_LoopFileName		; присваивание названий файла к массиву
			stringi:=str%kstr%
			RegExMatch(stringi, "(.*).txt", out) ;выбор имени файла без разширения
			lekc.= "{B22222}[" kstr "] - {32CD32}" out1 "`n"
			kstr++ ; кол-во строк
		}
	}
	if (kstr-1 <> 0){
		;addchatmessage("{008B8B}Количество лекций - {FF0000}"kstr-1 )
		sleep 500
		SendMessage, 0x50,, 0x4190419,, A
		addchatmessage("{32CD32}Введите номер лекции и нажмите {B22222}""Enter"".")
		showdialog(1,"Лекции.", lekc, "Ок")
		lekc:=""
		input, var, V, {Enter}
		if ( var >= 1) and (var<=kstr){
			stringi:=str%var%
			num:=0
			Loop, read, files/lectures/%stringi%
			{
				if (A_LoopReadLine <> ""){
					num++
				}
			}
			RegExMatch(stringi,"(.*).txt", out)
			addchatmessage("{00FF7F}[Лекция]: {008B8B}Вы выбрали лекцию №" . var . " {008B8B}{00FF00}(" . out1 . "){008B8B} ,через {FF0000}3 секунды {008B8B}она начнется.")
			addchatmessage("{00FF7F}[Лекция]: {008B8B}Для паузы нажмите - {FF0000}F3{008B8B}, для продолжения - {FF0000}F4{008B8B}, для остановки - {FF0000}F12{008B8B}.")
			sleep 3000
			numstr:=0
			setformat float, 0.0
			Loop, read, files/lectures/%stringi%
			{
				if (A_LoopReadLine <> ""){
					sendchat(A_LoopReadLine)
					numstr++
					itog:=numstr/num*100
					itog.=" %"
					printlow(itog,1000)
					sim:=StrLen(A_LoopReadLine)
					if (sim >= 10) and (sim<=20) {
						seku:=3500
					} else if (sim > 20) and (sim <=40){
						seku:=4000
					} else if (sim<10){
						seku:=3000
					} else if (sim > 40) and (sim <= 50){
						seku:=5000
					} else if (sim>50) and (sim<=60){
						seku:=6000
					} else if (sim >60)and (sim <=70){
						seku:=7000
					} else if (sim >70)and (sim<=80){
						seku:=7500
					} else if (sim >80){
						seku:=8000
					}
					printlow(itog,seku)
					sleep %seku%
				}
			}
			addchatmessage("{00FF7F}[Лекция]:{008B8B} Лекция закончилась")
			} else {
			addchatmessage("{00FF7F}[Лекция]:{008B8B} Вы ничего не выбрали или ввели неверный номер")
			}
		} else {
		addchatmessage("{00FF7F}[Лекция]:{008B8B} Лекций не обнаружено")
		}
	this.status_binda:=0
	}
	
	getMDC()
	{
		SendMessage, 0x50,, 0x4190419,, A	
		Sendinput {F6}/mdc{Space}
		Input, varID, V, {Enter}
		KeyWait, Enter, D

		sleep 1200

			log := {str:"",find:0,num:0}    ,    log.str := []
			Loop, read, %A_MyDocuments%\GTA San Andreas User Files\SAMP\chatlog.txt
			log.str.Insert(A_LoopReadLine)    ,log.num := A_Index
			loop 30
			if RegExMatch(     log.str[log.num + 1 - A_Index]
			,"\[(.*)\]  Уровень розыска: (.*)"
			, vra) and (log.find:=log.num + 1 - A_Index)
			break
			
			loop 30
			if RegExMatch(     log.str[log.num + 1 - A_Index]
			,"\[(.*)\]  Организация: (.*)"
			, vrb) and (log.find:=log.num + 1 - A_Index)
			break
			
			
		Name := getPlayerNameById(varID)
		Pname := RegExReplace(Name, "\_.*", "")
		PSname := RegExReplace(Name, ".*_", "")
		Sleep 500
		if (Name != -1) and (vra1 != "") and (vrb1 != "") {
			SendChat("/r [MDC №" . varID . "] • Имя: " . Pname . " " . PSname . " | Ур. розыска: " . vra2 . " | Орг: " . vrb2 . " |")
		} else {
			addChatMessageEx("{FF8300}", "{1E90FF}[AHK]: {FF0000}Вы ничего не ввели/ввели неверный ID.")
		}
	}
	
	getArmor()
	{
	if isDialogOpen() and getDialogCaption()= "Склад оружия"{
		sendinput {down 5}
		SendInput {enter}
		sleep 500
		sendinput {down 6}
		SendInput {enter}
		sleep 500
		SendInput {enter}
		sleep 500
		sendinput {enter}
		sleep 500
		SendInput {down}
		SendInput {enter}
		sleep 500
		SendInput {down}
		SendInput {enter}
		sleep 500
		SendInput {down 3}
		SendInput {enter}
		sleep 500
		SendInput {down 3}
		SendInput {enter}
		sleep 500
		SendInput {down 4}
		SendInput {enter}
		sleep 500
		SendInput {down 4}
		SendInput {enter}
		sleep 500
		sendinput {esc}
	} else {
		addchatmessage("Зайдите в меню выбора оружия")
	}
return
	
	
	}
	
}
	