#UseHook
#NoEnv
#SingleInstance force
#include files/Functions.ahk
#include files/Main_binds.ahk
#include files/Special.ahk
;========================================================MAIN======================================================================================
special := new Special()

SendMessage, 0x50,, 0x4190419,, A

Menu, Tray, Icon, files\image\icon.png

While (n<=30) {
	k%n%:=special.getBindKeys(n)
	n++
	}

NameName:=special.getMyName()

RankName:=special.getMyRank()

TagName:=special.getMyTag()

MyTag:= special.getMyRealTag(TagName)

LeftSkobka := special.getLeftTag()

RightSkobka := special.getRightTag()

MyForma:= special.getForm()

Priniatie:= special.getPriniatie()

smallCity:= special.getSmallCity()

City:=special.getCity()

FS:=special.getFullSquad()

MM:=special.getMyMark()

Cl:=special.getClist()

IfWinNotActive GTA:SA:MP
{
SendMessage, 0x50,, 0x4190419,, A
;=======================Шапка============================
Gui, Font, S14 CDefault Bold, Verdana
Gui, Font, S8 CDefault, Verdana

Gui, Font, S8 CRed, Verdana
Gui, Add, Text, x182 y115 w30 h20 , F11
Gui, Add, Text, x332 y115 w30 h20 , F12
Gui, Font, S8 Cdefault, Verdana
Gui, Add, Text, x222 y115 w100 h20 , Развернуть
Gui, Add, Text, x372 y115 w100 h20 , Перезагрузить


Gui, Add, Edit, x2 y9 w170 h20 vName, %NameName%
Gui, Add, Edit, x2 y39 w170 h20 vRank, %RankName%
Gui, Add, Edit, x2 y69 w170 h20 vTag, %TagName%
Gui, Add, Text, x182 y9 w150 h20 , Name_Saname
Gui, Add, Text, x182 y39 w150 h20 , Звание
Gui, Add, Text, x182 y69 w120 h20 , Тэг без скобок
Gui, Add, Button, x2 y99 w170 h30 gSaveShapka, Сохранить данные
Gui, Add, Button, x402 y9 w170 h30 gSetting, Настройки
Gui, Add, Button, x402 y44 w170 h30 gCommands, Команды биндера
Gui, Add, Button, x402 y79 w170 h30 gUsersBinds, Личные бинды
Gui, Add, Text, x2 y139 w470 h20 , =======================================================================================
Gui, Add, Text, x462 y139 w470 h20 , ====================
;=======================Клавиши============================
Gui, Add, Hotkey, x2 y169 w110 h20 vKey1, %k1%
Gui, Add, Hotkey, x2 y199 w110 h20 vKey2, %k2%
Gui, Add, Hotkey, x2 y229 w110 h20 vKey3, %k3%
Gui, Add, Hotkey, x2 y259 w110 h20 vKey4, %k4%
Gui, Add, Hotkey, x2 y289 w110 h20 vKey5, %k5%
Gui, Add, Hotkey, x2 y319 w110 h20 vKey6, %k6%
Gui, Add, Hotkey, x2 y349 w110 h20 vKey7, %k7%
Gui, Add, Hotkey, x2 y379 w110 h20 vKey8, %k8%
Gui, Add, Hotkey, x2 y409 w110 h20 vKey9, %k9%
Gui, Add, Hotkey, x2 y439 w110 h20 vKey10, %k10%
Gui, Add, Hotkey, x2 y469 w110 h20 vKey11, %k11%
Gui, Add, Hotkey, x2 y499 w110 h20 vKey12, %k12%
Gui, Add, Hotkey, x2 y529 w110 h20 vKey13, %k13%
Gui, Add, Hotkey, x2 y559 w110 h20 vKey14, %k14%
Gui, Add, Hotkey, x2 y589 w110 h20 vKey15, %k15%
Gui, Add, Hotkey, x282 y169 w110 h20 vKey16, %k16%
Gui, Add, Hotkey, x282 y199 w110 h20 vKey17, %k17%
Gui, Add, Hotkey, x282 y229 w110 h20 vKey18, %k18%
Gui, Add, Hotkey, x282 y259 w110 h20 vKey19, %k19%
Gui, Add, Hotkey, x282 y289 w110 h20 vKey20, %k20%
Gui, Add, Hotkey, x282 y319 w110 h20 vKey21, %k21%
Gui, Add, Hotkey, x282 y349 w110 h20 vKey22, %k22%
Gui, Add, Hotkey, x282 y379 w110 h20 vKey23, %k23%
Gui, Add, Hotkey, x282 y409 w110 h20 vKey24, %k24%
Gui, Add, Hotkey, x282 y439 w110 h20 vKey25, %k25%
Gui, Add, Hotkey, x282 y469 w110 h20 vKey26, %k26%
Gui, Add, Hotkey, x282 y499 w110 h20 vKey27, %k27%
Gui, Add, Hotkey, x282 y529 w110 h20 vKey28, %k28%
Gui, Add, Hotkey, x282 y559 w110 h20 vKey29, %k29%
Gui, Add, Hotkey, x282 y589 w110 h20 vKey30, %k30%

;=====================Кнопки==============================
Gui, Add, Button, x2 y619 w110 h30 gSave, Сохранить
Gui, Add, Button, x342 y619 w110 h30 gNext, Старт!
Gui, Add, Button, x462 y619 w120 h30 gGuiClose, Выйти
;=======================Расшифровки============================
Gui, Add, Text, x122 y169 w140 h20 , Указать тэг в рацию
Gui, Add, Text, x122 y199 w140 h20 , Доклад о принятии
Gui, Add, Text, x122 y229 w140 h20 , /su
Gui, Add, Text, x122 y259 w140 h20 , Отыгровка /cuff
Gui, Add, Text, x122 y289 w140 h20 , Отыгровка /cput
Gui, Add, Text, x122 y319 w140 h20 , Отыгровка /ceject
Gui, Add, Text, x122 y349 w140 h20 , Отыгровка /follow
Gui, Add, Text, x122 y379 w140 h20 , Мегафон в погоне
Gui, Add, Text, x122 y409 w150 h20 , Надеть маску/жетон
Gui, Add, Text, x122 y439 w150 h20 , Снять маску/жетон
Gui, Add, Text, x122 y469 w140 h20 , Отыгровка /take
Gui, Add, Text, x122 y499 w140 h20 , Зачитать права
Gui, Add, Text, x122 y529 w140 h20 , Выезд в патруль
Gui, Add, Text, x122 y559 w140 h20 , Состояние патруля
Gui, Add, Text, x122 y589 w140 h20 , Завершение патруля
Gui, Add, Text, x402 y169 w140 h20 , СОС в рацию
Gui, Add, Text, x402 y199 w200 h20 , Сектор погони в рацию
Gui, Add, Text, x402 y229 w200 h20 , Ответ на предыдущее СМС
Gui, Add, Text, x402 y259 w200 h20 , Подача в ООП по ID
Gui, Add, Text, x402 y289 w200 h20 , /lock (полезно)
Gui, Add, Text, x402 y319 w200 h20 , /time +скрин (полезно)
Gui, Add, Text, x402 y349 w200 h20 , Представиться
Gui, Add, Text, x402 y379 w200 h20 , Отыгровка штрафа
Gui, Add, Text, x402 y409 w200 h20 , Розыск в перестрелке
Gui, Add, Text, x402 y439 w200 h20 , Прочитать лекцию
Gui, Add, Text, x402 y469 w200 h20 , MDC в рацию
Gui, Add, Text, x402 y499 w200 h20 , Авто БК
Gui, Add, Text, x402 y529 w200 h20 , *Не доработано*
Gui, Add, Text, x402 y559 w200 h20 , *Не доработано*
Gui, Add, Text, x402 y589 w200 h20 , *Не доработано*
;=====================================================
; Generated using SmartGUI Creator for SciTE
Gui Show, w590 h658, Биндер для Police
return

GuiClose:
    ExitApp
return
;=====================Сохранение=======================
Save:
n:=1
bar:=0
while (n<=30) {
	GuiControlGet, key%n%
	var:=key%n%
	special.saveAll(var,n)
	n++
	}
SaveShapka:
	GuiControlGet, Name
	GuiControlGet, Rank
	GuiControlGet, Tag
	special.saveHead(Name, Rank, Tag)
	reload
return

}

;==========================Назначение клавиш=============================
Next:
SendMessage, 0x50,, 0x4190419,, A

binds := new Binds()

Gui, Submit
special.getActiveKeys()
special.PizzaSkill()
return
;===========================Настройки===========================
Setting:
	FS:=special.getFullSquad()
	MM:=special.getMyMark()
	Cl:=special.getClist()
	LeftSkobka:=special.getLeftTag()
	RightSkobka:=special.getRightTag()
	Forma:=special.getForm()
	Priniatie:= special.getPriniatie()
	smallCity:= special.getSmallCity()

	Gui 4: Font, S8 CDefault Bold, Verdana
	Gui 4: Add, Text, x22 y19 w240 h20 , Полное название отряда
	Gui 4: Add, Text, x22 y69 w240 h20 , Что надеть? жетон\значок\маску
	Gui 4: Add, Edit, x22 y39 w240 h20 vFullSquad, %FS%
	Gui 4: Add, Edit, x22 y89 w240 h20 vMyMark, %MM%
	Gui 4: Add, Text, x22 y119 w240 h20 , Номер /clist
	Gui 4: Add, Edit, x22 y139 w240 h20 vClist, %Cl%
	Gui 4: Add, Text, x22 y169 w240 h20 , Скобки тега
	Gui 4: Add, Edit, x22 y189 w20 h20 vLeft, %LeftSkobka%
	Gui 4: Add, Edit, x113 y189 w20 h20 vRight, %RightSkobka%
	Gui 4: Add, Text, x43 y189 w70 h20 , %TagName%
	Gui 4: Add, Text, x22 y219 w240 h20 , Форма доклада
	Gui 4: Add, DropDownList, x22 y239 w240 h50 Choose%Forma% vForm, Стандартная|Тен-коды
	Gui 4: Add, Text, x22 y269 w240 h20 , Форма принятия (без /r и отдела)
	Gui 4: Add, Edit, x22 y289 w240 h20 vPrin, %Priniatie%
	Gui 4: Add, Text, x22 y319 w240 h20 , Ваш город: LV, LS, SF
	Gui 4: Add, Edit, x22 y339 w240 h20 vSmallCi, %smallCity%
	Gui 4: Add, Button, x22 y369 w100 h30 g4Save, Сохранить
	Gui 4: Add, Button, x162 y369 w100 h30 g4GuiClose, Закрыть
	; Generated using SmartGUI Creator for SciTE
	Gui 4: Show, w301 h405, Настройки
return

4GuiClose:
	gui 4: destroy
return

4Save:
	GuiControlGet, FullSquad
	GuiControlGet, MyMark
	GuiControlGet, Clist
	GuiControlGet, Left
	GuiControlGet, Right
	GuiControlGet, Form
	GuiControlGet, Prin
	GuiControlGet, SmallCi
	special.saveMainSetting(FullSquad, MyMark, Clist, Left, Right, Form, Prin, SmallCi)
	msgbox,,Объявление, Настройки успешно сохранены!
	reload
return
;===========================Команды=============================
Commands:
	Gui 2: Font, S8 CRed Bold, Verdana
	Gui 2: Add, Text, x10 y10 w110 h20 , /bomb1
	Gui 2: Add, Text, x10 y40 w110 h20 , /bomb2
	Gui 2: Add, Text, x10 y70 w110 h20 , //UK 
	Gui 2: Add, Text, x10 y100 w110 h20 , //AK 
	Gui 2: Add, Text, x10 y130 w110 h20 , /helpPolice
	Gui 2: Add, Text, x10 y160 w110 h20 , //tens
	Gui 2: Add, Text, x10 y190 w110 h20 , /chPizza
	
	Gui 2: Font, S8 CDefault Bold, Verdana
	Gui 2: Add, Text, x130 y10 w200 h20 , Разминирование таймер
	Gui 2: Add, Text, x130 y40 w200 h20 , Разминирование дистанц
	Gui 2: Add, Text, x130 y130 w200 h20 , Все кнопки
	Gui 2: Add, Text, x130 y100 w200 h20 , Шпаргалка АК
	Gui 2: Add, Text, x130 y70 w200 h20 , Шпаргалка УК 
	Gui 2: Add, Text, x130 y160 w200 h20 , Шпаргалка Тен-Коды
	Gui 2: Add, Text, x130 y190 w250 h20 , Включить/выключить LikePizza
	Gui 2: Add, Button, x110 y220 w110 h30 g2GuiClose, Закрыть
	Gui 2: Show, w350 h260, Команды биндера
return

2GuiClose:
	gui 2: destroy
return
;===========================Личные==============================
UsersBinds:
	n:=1
	While (n<=18) {
	b%n%:=special.getBindKeys_owner_binds(n)
	ok%n%:=special.getBindKeys_owner_keys(n)
	c%n%:=special.getBindKeys_owner_chek(n)
	n++
	}
	Gui 3: Font, S10 CDefault, Verdana
	Gui 3: Add, Edit, x122 y39 w440 h20 vBind1, %b1%
	Gui 3: Add, Edit, x122 y69 w440 h20 vBind2, %b2%
	Gui 3: Add, Edit, x122 y99 w440 h20 vBind3, %b3%
	Gui 3: Add, Edit, x122 y129 w440 h20 vBind4, %b4%
	Gui 3: Add, Edit, x122 y159 w440 h20 vBind5, %b5%
	Gui 3: Add, Edit, x122 y189 w440 h20 vBind6, %b6%
	Gui 3: Add, Edit, x122 y219 w440 h20 vBind7, %b7%
	Gui 3: Add, Edit, x122 y249 w440 h20 vBind8, %b8%
	Gui 3: Add, Edit, x122 y279 w440 h20 vBind9, %b9%
	Gui 3: Add, Edit, x122 y309 w440 h20 vBind10,%b10%
	Gui 3: Add, Edit, x122 y339 w440 h20 vBind11, %b11%
	Gui 3: Add, Edit, x122 y369 w440 h20 vBind12, %b12%
	Gui 3: Add, Edit, x122 y399 w440 h20 vBind13, %b13%
	Gui 3: Add, Edit, x122 y429 w440 h20 vBind14, %b14%
	Gui 3: Add, Edit, x122 y459 w440 h20 vBind15, %b15%
	Gui 3: Add, Edit, x122 y489 w440 h20 vBind16, %b16%
	Gui 3: Add, Edit, x122 y519 w440 h20 vBind17, %b17%
	Gui 3: Add, Edit, x122 y549 w440 h20 vBind18, %b18%
	Gui 3: Font, S10 CDefault Bold, Verdana
	Gui 3: Add, Text, x12 y9 w100 h30 , Клавиша
	Gui 3: Add, Text, x122 y9 w100 h30 , Бинд
	Gui 3: Add, Text, x572 y9 w80 h30 , Enter
	Gui 3: Add, Hotkey, x12 y39 w100 h20 vOwnkey1, %ok1%
	Gui 3: Add, Hotkey, x12 y69 w100 h20 vOwnkey2, %ok2%
	Gui 3: Add, Hotkey, x12 y99 w100 h20 vOwnkey3, %ok3%
	Gui 3: Add, Hotkey, x12 y129 w100 h20 vOwnkey4, %ok4%
	Gui 3: Add, Hotkey, x12 y159 w100 h20 vOwnkey5, %ok5%
	Gui 3: Add, Hotkey, x12 y189 w100 h20 vOwnkey6, %ok6%
	Gui 3: Add, Hotkey, x12 y219 w100 h20 vOwnkey7, %ok7%
	Gui 3: Add, Hotkey, x12 y249 w100 h20 vOwnkey8, %ok8%
	Gui 3: Add, Hotkey, x12 y279 w100 h20 vOwnkey9, %ok9%
	Gui 3: Add, Hotkey, x12 y309 w100 h20 vOwnkey10, %ok10%
	Gui 3: Add, Hotkey, x12 y339 w100 h20 vOwnkey11, %ok11%
	Gui 3: Add, Hotkey, x12 y369 w100 h20 vOwnkey12, %ok12%
	Gui 3: Add, Hotkey, x12 y399 w100 h20 vOwnkey13, %ok13%
	Gui 3: Add, Hotkey, x12 y429 w100 h20 vOwnkey14, %ok14%
	Gui 3: Add, Hotkey, x12 y459 w100 h20 vOwnkey15, %ok15%
	Gui 3: Add, Hotkey, x12 y489 w100 h20 vOwnkey16, %ok16%
	Gui 3: Add, Hotkey, x12 y519 w100 h20 vOwnkey17, %ok17%
	Gui 3: Add, Hotkey, x12 y549 w100 h20 vOwnkey18, %ok18%
	Gui 3: Add, CheckBox, x582 y39 w30 h20 %c1% vChek1,
	Gui 3: Add, CheckBox, x582 y69 w30 h20 %c2% vChek2,
	Gui 3: Add, CheckBox, x582 y99 w30 h20 %c3% vChek3, 
	Gui 3: Add, CheckBox, x582 y129 w30 h20 %c4% vChek4, 
	Gui 3: Add, CheckBox, x582 y159 w30 h20 %c5% vChek5, 
	Gui 3: Add, CheckBox, x582 y189 w30 h20 %c6% vChek6,
	Gui 3: Add, CheckBox, x582 y219 w30 h20 %c7% vChek7, 
	Gui 3: Add, CheckBox, x582 y249 w30 h20 %c8% vChek8, 
	Gui 3: Add, CheckBox, x582 y279 w30 h20 %c9% vChek9, 
	Gui 3: Add, CheckBox, x582 y309 w30 h20 %c10% vChek10, 
	Gui 3: Add, CheckBox, x582 y339 w30 h20 %c11% vChek11, 
	Gui 3: Add, CheckBox, x582 y369 w30 h20 %c12% vChek12, 
	Gui 3: Add, CheckBox, x582 y399 w30 h20 %c13% vChek13, 
	Gui 3: Add, CheckBox, x582 y429 w30 h20 %c14% vChek14,
	Gui 3: Add, CheckBox, x582 y459 w30 h20 %c15% vChek15, 
	Gui 3: Add, CheckBox, x582 y489 w30 h20 %c16% vChek16,
	Gui 3: Add, CheckBox, x582 y519 w30 h20 %c17% vChek17, 
	Gui 3: Add, CheckBox, x582 y549 w30 h20 %c18% vChek18, 
	Gui 3: Add, Button, x12 y589 w100 h30 g3Save, Сохранить
	Gui 3: Add, Button, x512 y589 w100 h30 g3GuiClose, Выйти
	Gui 3: Add, Progress, x122 y589 w380 h30 , 0
	; Generated using SmartGUI Creator for SciTE
	Gui 3: Show, w634 h629, Личные бинды
return

3GuiClose:
	gui 3: destroy
return

3Save:
	n:=1
	bar:=0
	while (n<=18) {
		GuiControlGet, Bind%n%
		GuiControlGet, Ownkey%n%
		GuiControlGet, Chek%n%
		var:=Bind%n%
		var1:=Ownkey%n%
		var2:=Chek%n%
		special.saveAll_owner(var,var1,var2,n)
		n++
	}
	msgbox,,Объявление, Все бинды сохранены!
	reload
return

;============================Бинды===========================

f3::
if (binds.status_binda = 1){
	addchatmessage("{00FF7F}[Лекция]:{008B8B} Лекция поставлена на паузу") 
	pause, On
	}
return
f4::
	if (binds.status_binda = 1){
	addchatmessage("{00FF7F}[Лекция]:{008B8B} Лекция убрана с паузы") 
	pause, Off
	}
return

f12::
	SendMessage, 0x50,, 0x4190419,, A
	IfWinActive GTA:SA:MP 
	{
		addChatMessage("{FFFF00} Вы успешно перезагрузили биндер.")
	}
	reload
return
f11::
	IfWinNotActive GTA:SA:MP
	{
	Gui, restore
	}
return
#IfWinActive GTA:SA:MP

active1:
	SendMessage, 0x50,, 0x4190419,, A
	binds.toR(MyTag)
return

active2:
	binds.getReady(MyTag, MyForma, Priniatie)
return

active3:
	binds.toSU()
return

active4:
	binds.toCuff()
return

active5:
	binds.toCput()
return

active6:
	binds.toCeject()
return

active7:
	binds.toFollow()
return

active8:
	binds.toM()
return

active9:
	binds.getMask(FS, Cl, MM)
return

active10:
	binds.TakeOutMask(FS, MM)
return

active11:
	binds.toTake()
return

active12:
	binds.Miranda()
return

active13:
	binds.ToPatrol(MyTag, MyForma, smallCity)
return

active14:
	binds.InPatrol(MyTag, MyForma, smallCity)
return

active15:
	binds.OutPatrol(MyTag, MyForma, smallCity)
return
	
active16:
	binds.giveSOS(MyTag, MyForma)
return

active17:
	binds.giveCordPogon(MyTag, MyForma)
return

active18:
	binds.giveLastSMS()
return

active19:
	binds.toOOP()
return

active20:
	binds.toLock()
return

active21:
	binds.takeScreen()
return

active22:
	binds.GiveMyName(RankName, NameName, FS, City, smallCity)
return

active23:
	binds.toTicket()
return

active24:
	binds.FireSU()
return

active25:
	binds.getLecture()
return

active26:
	binds.getMDC()
return

active27:
	binds.getArmor()
return

active28:
	;todo
return

active29:
	;todo
return

active30:
	;todo
return

;============================Личные Бинды===========================

own_active1:
	binds.getOwnBind(1)
return

own_active2:
	binds.getOwnBind(2)
return

own_active3:
	binds.getOwnBind(3)
return

own_active4:
	binds.getOwnBind(4)
return

own_active5:
	binds.getOwnBind(5)
return

own_active6:
	binds.getOwnBind(6)
return

own_active7:
	binds.getOwnBind(7)
return

own_active8:
	binds.getOwnBind(8)
return

own_active9:
	binds.getOwnBind(9)
return

own_active10:
	binds.getOwnBind(10)
return

own_active11:
	binds.getOwnBind(11)
return

own_active12:
	binds.getOwnBind(12)
return

own_active13:
	binds.getOwnBind(13)
return

own_active14:
	binds.getOwnBind(14)
return

own_active15:
	binds.getOwnBind(15)
return

own_active16:
	binds.getOwnBind(16)
return

own_active17:
	binds.getOwnBind(17)
return

own_active18:
	binds.getOwnBind(18)
return


;================================Команды======================================
:?:/bomb1::
	binds.bomb_time1()
return

:?:/bomb12::
	binds.bomb_time2()
return

:?:/bomb2::
	binds.bomb_dist()
return

:?://UK::
	binds.getUK()
return

:?:/helpPolice::
	binds.getKeys(k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k23,k24,k25,k26,k27,k28,k29,k30)
return

:?://AK::
	binds.getAK()
return

:?://tens::
	binds.getTens()
return

:?:/chPizza::
	special.setBlock()
return
