<%'/*
'**********************************************
'      /\      | (_)
'     /  \   __| |_  __ _ _ __  ___
'    / /\ \ / _` | |/ _` | '_ \/ __|
'   / ____ \ (_| | | (_| | | | \__ \
'  /_/    \_\__,_| |\__,_|_| |_|___/
'               _/ | Digital Agency
'              |__/
'**********************************************
'* Project  : RabbitCMS
'* Developer: <Anthony Burak DURSUN>
'* E-Mail   : badursun@adjans.com.tr
'* Corp     : https://adjans.com.tr
'**********************************************
' LAST UPDATE: 28.10.2022 15:33 @badursun
'**********************************************
'*/
Class Whatsapp_Widget_Plugin
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Variables
	'---------------------------------------------------------------
	'*/
	Private PLUGIN_CODE, PLUGIN_DB_NAME, PLUGIN_NAME, PLUGIN_VERSION, PLUGIN_CREDITS, PLUGIN_GIT, PLUGIN_DEV_URL, PLUGIN_FILES_ROOT, PLUGIN_ICON, PLUGIN_REMOVABLE, PLUGIN_ROOT, PLUGIN_FOLDER_NAME, PLUGIN_AUTOLOAD
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Variables
	'---------------------------------------------------------------
	'*/
	Private WHATSAPP_EKLENTI_ACTIVE, WHATSAPP_EKLENTI_TELEFON, WHATSAPP_EKLENTI_MESAJ, WHATSAPP_EKLENTI_KARSILAMA, WHATSAPP_EKLENTI_ADI, WHATSAPP_EKLENTI_POZISYON, WHATSAPP_EKLENTI_THEME
	Private WHATSAPP_EKLENTI_BTN_TEXT, WHATSAPP_EKLENTI_TIMING_MSG, WHATSAPP_EKLENTI_TYPEMSG
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Register Class
	'---------------------------------------------------------------
	'*/
	Public Property Get class_register()
		DebugTimer ""& PLUGIN_CODE &" class_register() Start"
		'/*
		'---------------------------------------------------------------
		' Check Register
		'---------------------------------------------------------------
		'*/
		If CheckSettings("PLUGIN:"& PLUGIN_CODE &"") = True Then 
			DebugTimer ""& PLUGIN_CODE &" class_registered"
			Exit Property
		End If
		'/*
		'---------------------------------------------------------------
		' Plugin Settings
		'---------------------------------------------------------------
		'*/
		a=GetSettings("PLUGIN:"& PLUGIN_CODE &"", PLUGIN_CODE&"_")
		a=GetSettings(""&PLUGIN_CODE&"_PLUGIN_NAME", PLUGIN_NAME)
		a=GetSettings(""&PLUGIN_CODE&"_CLASS", "Whatsapp_Widget_Plugin")
		a=GetSettings(""&PLUGIN_CODE&"_REGISTERED", ""& Now() &"")
		a=GetSettings(""&PLUGIN_CODE&"_CODENO", "4748")
		a=GetSettings(""&PLUGIN_CODE&"_FOLDER", PLUGIN_FOLDER_NAME)
		'/*
		'---------------------------------------------------------------
		' Register Settings
		'---------------------------------------------------------------
		'*/
		DebugTimer ""& PLUGIN_CODE &" class_register() End"
	End Property
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Register Class End
	'---------------------------------------------------------------
	'*/
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Settings Panel
	'---------------------------------------------------------------
	'*/
	Public sub LoadPanel()
		'/*
		'--------------------------------------------------------
		' Main Page
		'--------------------------------------------------------
		'*/
		With Response
			PLUGIN_PANEL_MASTER_HEADER This()
			
			.Write "<div class=""row"">"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TELEFON", "Whatsapp Telefonu <small>(9055551234567)</small>", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_ADI", "Temsilci Adı", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("select", ""& PLUGIN_CODE &"_POZISYON", "Eklenti Pozisyonu", "Left#Sol Köşe|Right#Sağ Köşe", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TIMING_MSG", "Temsilci Mesaj Cevaplama Zaman Metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_BTN_TEXT", "Widget Buton Metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-4 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TYPEMSG", "Input Placeholder", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-6 col-sm-12"">"
			.Write 			QuickSettings("textarea", ""& PLUGIN_CODE &"_KARSILAMA", "Karşılama Mesajı", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-6 col-sm-12"">"
			.Write 			QuickSettings("textarea", ""& PLUGIN_CODE &"_MESAJ", "Gönderilecek otomatik yazı metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-6 col-sm-12"">"
			.Write 			QuickSettings("select", ""& PLUGIN_CODE &"_THEME", "Tema Rengi", "light#Light|dark#Dark", TO_DB)
			.Write "    </div>"
			.Write "</div>"
		End With
	End Sub
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Settings Panel
	'---------------------------------------------------------------
	'*/
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Class Initialize
	'---------------------------------------------------------------
	'*/
	Private Sub class_initialize()
		'/*
		'-----------------------------------------------------------------------------------
		' REQUIRED: PluginTemplate Main Variables
		'-----------------------------------------------------------------------------------
		'*/
		PLUGIN_NAME 			= "Whatsapp Widget Plugin"
		PLUGIN_CODE  			= "WHATSAPP_EKLENTI"
		PLUGIN_DB_NAME 			= ""
		PLUGIN_VERSION 			= "1.0.0"
		PLUGIN_CREDITS 			= "@badursun Anthony Burak DURSUN"
		PLUGIN_GIT 				= "https://github.com/RabbitCMS-Hub/Whatsapp-Widget-Plugin"
		PLUGIN_DEV_URL 			= "https://adjans.com.tr"
		PLUGIN_ICON 			= "zmdi-whatsapp"
		PLUGIN_FOLDER_NAME 		= "Whatsapp-Widget-Plugin"
		PLUGIN_REMOVABLE 		= True
		PLUGIN_AUTOLOAD 		= True
		PLUGIN_ROOT 			= PLUGIN_DIST_FOLDER_PATH(This)
		PLUGIN_FILES_ROOT 		= PLUGIN_VIRTUAL_FOLDER(This)
		'/*
		'-----------------------------------------------------------------------------------
		' REQUIRED: PluginTemplate Main Variables
		'-----------------------------------------------------------------------------------
		'*/
		WHATSAPP_EKLENTI_ACTIVE 			= Cint( GetSettings(""& PLUGIN_CODE &"_ACTIVE","0") )
		WHATSAPP_EKLENTI_TELEFON 			= GetSettings(""& PLUGIN_CODE &"_TELEFON", "")
		WHATSAPP_EKLENTI_MESAJ 				= GetSettings(""& PLUGIN_CODE &"_MESAJ", "Ürünleriniz hakkında bilgi almak istiyorum")
		WHATSAPP_EKLENTI_KARSILAMA 			= GetSettings(""& PLUGIN_CODE &"_KARSILAMA", "Merhaba, size nasıl yardımcı olabiliriz?")
		WHATSAPP_EKLENTI_ADI 				= GetSettings(""& PLUGIN_CODE &"_ADI", "Müşteri Temsilcisi")
		WHATSAPP_EKLENTI_POZISYON 			= GetSettings(""& PLUGIN_CODE &"_POZISYON", "Left")
		WHATSAPP_EKLENTI_TIMING_MSG 		= GetSettings(""& PLUGIN_CODE &"_TIMING_MSG", "Genellikle bir saat içinde yanıt verir")
		WHATSAPP_EKLENTI_BTN_TEXT 			= GetSettings(""& PLUGIN_CODE &"_BTN_TEXT", "Bize Yazın")
		WHATSAPP_EKLENTI_TYPEMSG 			= GetSettings(""& PLUGIN_CODE &"_TYPEMSG", "Bize Yazın")
		WHATSAPP_EKLENTI_THEME 				= GetSettings(""& PLUGIN_CODE &"_THEME", "light")
		'/*
		'-----------------------------------------------------------------------------------
		' REQUIRED: Register Plugin to CMS
		'-----------------------------------------------------------------------------------
		'*/
		class_register()
		'/*
		'-----------------------------------------------------------------------------------
		' REQUIRED: Hook Plugin to CMS Auto Load Location WEB|API|PANEL
		'-----------------------------------------------------------------------------------
		'*/
		Dim DONT_RUN_AT
			DONT_RUN_AT = Array("account-management", "sys", "modal", "payment")
		If PLUGIN_AUTOLOAD_AT("WEB") = True AND in_array(URLPart(4), DONT_RUN_AT, True) = False Then 
			Cms.FooterData = WhatsappWidgetData()
		End If
	End Sub
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Class Initialize
	'---------------------------------------------------------------
	'*/
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Class Terminate
	'---------------------------------------------------------------
	'*/
	Private sub class_terminate()

	End Sub
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Class Terminate
	'---------------------------------------------------------------
	'*/
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Manager Exports
	'---------------------------------------------------------------
	'*/
	Public Property Get PluginCode() 		: PluginCode = PLUGIN_CODE 					: End Property
	Public Property Get PluginName() 		: PluginName = PLUGIN_NAME 					: End Property
	Public Property Get PluginVersion() 	: PluginVersion = PLUGIN_VERSION 			: End Property
	Public Property Get PluginGit() 		: PluginGit = PLUGIN_GIT 					: End Property
	Public Property Get PluginDevURL() 		: PluginDevURL = PLUGIN_DEV_URL 			: End Property
	Public Property Get PluginFolder() 		: PluginFolder = PLUGIN_FILES_ROOT 			: End Property
	Public Property Get PluginIcon() 		: PluginIcon = PLUGIN_ICON 					: End Property
	Public Property Get PluginRemovable() 	: PluginRemovable = PLUGIN_REMOVABLE 		: End Property
	Public Property Get PluginCredits() 	: PluginCredits = PLUGIN_CREDITS 			: End Property
	Public Property Get PluginRoot() 		: PluginRoot = PLUGIN_ROOT 					: End Property
	Public Property Get PluginFolderName() 	: PluginFolderName = PLUGIN_FOLDER_NAME 	: End Property
	Public Property Get PluginDBTable() 	: PluginDBTable = IIf(Len(PLUGIN_DB_NAME)>2, "tbl_plugin_"&PLUGIN_DB_NAME, "") 	: End Property
	Public Property Get PluginAutoload() 	: PluginAutoload = PLUGIN_AUTOLOAD 			: End Property
	Private Property Get This()
		This = Array(PluginCode, PluginName, PluginVersion, PluginGit, PluginDevURL, PluginFolder, PluginIcon, PluginRemovable, PluginCredits, PluginRoot, PluginFolderName, PluginDBTable, PluginAutoload)
	End Property
	'/*
	'---------------------------------------------------------------
	' REQUIRED: Plugin Manager Exports
	'---------------------------------------------------------------
	'*/
	'/*
	'---------------------------------------------------------------
	' 
	'---------------------------------------------------------------
	'*/
	Private Property Get WhatsappWidgetData()
		Dim wpCode
			wpCode = ""

		If WHATSAPP_EKLENTI_ACTIVE = 1 Then
			wpCode = "<whatsapp-widget id=""mwb_whatsapp"" number="""& Trim(WHATSAPP_EKLENTI_TELEFON) &""" name="""& WHATSAPP_EKLENTI_ADI &""" pre-msg="""& WHATSAPP_EKLENTI_MESAJ &""" type-msg="""& WHATSAPP_EKLENTI_TYPEMSG &""" timing-text="""& WHATSAPP_EKLENTI_TIMING_MSG &""" welcome-message="""& WHATSAPP_EKLENTI_KARSILAMA &""" avatar=""/favicon.ico"" theme="""& WHATSAPP_EKLENTI_THEME &""" position="""& WHATSAPP_EKLENTI_POZISYON &""" button-title="""& WHATSAPP_EKLENTI_BTN_TEXT &"""></whatsapp-widget>"
			'/*
			'-----------------------------------------------
			' Add DİST File to CMS 
			'-----------------------------------------------
			'*/
			PLUGIN_ADD_TO This, "JS", "js/whatsapp.js"
		End If

		WhatsappWidgetData = wpCode
	End Property
	'/*
	'---------------------------------------------------------------
	' 
	'---------------------------------------------------------------
	'*/
End Class 
%>