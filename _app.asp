<%
'**********************************************
'**********************************************
'               _ _                 
'      /\      | (_)                
'     /  \   __| |_  __ _ _ __  ___ 
'    / /\ \ / _` | |/ _` | '_ \/ __|
'   / ____ \ (_| | | (_| | | | \__ \
'  /_/    \_\__,_| |\__,_|_| |_|___/
'               _/ | Digital Agency
'              |__/ 
' 
'* Project  : RabbitCMS
'* Developer: <Anthony Burak DURSUN>
'* E-Mail   : badursun@adjans.com.tr
'* Corp     : https://adjans.com.tr
'**********************************************
' LAST UPDATE: 28.10.2022 15:33 @badursun
'**********************************************

Class Whatsapp_Widget_Plugin
	Private PLUGIN_CODE, PLUGIN_DB_NAME, PLUGIN_NAME, PLUGIN_VERSION, PLUGIN_CREDITS, PLUGIN_GIT, PLUGIN_DEV_URL, PLUGIN_FILES_ROOT

	Private WHATSAPP_EKLENTI_ACTIVE, WHATSAPP_EKLENTI_TELEFON, WHATSAPP_EKLENTI_MESAJ, WHATSAPP_EKLENTI_KARSILAMA, WHATSAPP_EKLENTI_ADI, WHATSAPP_EKLENTI_POZISYON
	Private WHATSAPP_EKLENTI_BTN_TEXT, WHATSAPP_EKLENTI_TIMING_MSG, WHATSAPP_EKLENTI_TYPEMSG

	'---------------------------------------------------------------
	' Register Class
	'---------------------------------------------------------------
	Public Property Get class_register()
		DebugTimer ""& PLUGIN_CODE &" class_register() Start"
		
		' Check Register
		'------------------------------
		If CheckSettings("PLUGIN:"& PLUGIN_CODE &"") = True Then 
			DebugTimer ""& PLUGIN_CODE &" class_registered"
			Exit Property
		End If

		' Register Settings
		'------------------------------
		a=GetSettings("PLUGIN:"& PLUGIN_CODE &"", PLUGIN_CODE&"_")
		a=GetSettings(""&PLUGIN_CODE&"_PLUGIN_NAME", PLUGIN_NAME)
		a=GetSettings(""&PLUGIN_CODE&"_CLASS", "Whatsapp_Widget_Plugin") ' WhatsappWidget
		a=GetSettings(""&PLUGIN_CODE&"_REGISTERED", ""& Now() &"")
		a=GetSettings(""&PLUGIN_CODE&"_CODENO", "4748")
		a=GetSettings(""&PLUGIN_CODE&"_ICON", "zmdi zmdi-whatsapp zmdi-hc-fw")
		a=GetSettings(""&PLUGIN_CODE&"_FOLDER", "Whatsapp-Widget-Plugin")

		' Register Settings
		'------------------------------
		DebugTimer ""& PLUGIN_CODE &" class_register() End"
	End Property
	'---------------------------------------------------------------
	' Register Class
	'---------------------------------------------------------------

	'---------------------------------------------------------------
	' Plugin Admin Panel Extention
	'---------------------------------------------------------------
	Public sub LoadPanel()
		'--------------------------------------------------------
		' Main Page
		'--------------------------------------------------------
		With Response
			'------------------------------------------------------------------------------------------
				PLUGIN_PANEL_MASTER_HEADER This()
			'------------------------------------------------------------------------------------------
			.Write "<div class=""row"">"
			.Write "    <div class=""col-lg-6 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TELEFON", "Whatsapp Telefonu <small>(9055551234567)</small>", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-6 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_ADI", "Temsilci Adı", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("select", ""& PLUGIN_CODE &"_POZISYON", "Eklenti Pozisyonu", "Left#Sol Köşe|Right#Sağ Köşe", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("textarea", ""& PLUGIN_CODE &"_KARSILAMA", "Karşılama Mesajı", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("textarea", ""& PLUGIN_CODE &"_MESAJ", "Gönderilecek otomatik yazı metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TIMING_MSG", "Temsilci Mesaj Cevaplama Zaman Metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_BTN_TEXT", "Widget Buton Metni", "", TO_DB)
			.Write "    </div>"
			.Write "    <div class=""col-lg-12 col-sm-12"">"
			.Write 			QuickSettings("input", ""& PLUGIN_CODE &"_TYPEMSG", "Input Placeholder", "", TO_DB)
			.Write "    </div>"
			.Write "</div>"
		End With
	End Sub
	'---------------------------------------------------------------
	'
	'---------------------------------------------------------------


	'---------------------------------------------------------------
	' Class First Init
	'---------------------------------------------------------------
	Private Sub class_initialize()
    	'-------------------------------------------------------------------------------------
    	' PluginTemplate Main Variables
    	'-------------------------------------------------------------------------------------
    	PLUGIN_NAME 			= "Whatsapp Widget Plugin"
    	PLUGIN_CODE  			= "WHATSAPP_EKLENTI"
    	PLUGIN_DB_NAME 			= "" ' tbl_plugin_XXXXXXX
    	PLUGIN_VERSION 			= "1.0.0"
    	PLUGIN_CREDITS 			= "@badursun Anthony Burak DURSUN"
    	PLUGIN_GIT 				= "https://github.com/RabbitCMS-Hub/Whatsapp-Widget-Plugin"
    	PLUGIN_DEV_URL 			= "https://adjans.com.tr"
    	PLUGIN_FILES_ROOT 		= PLUGIN_VIRTUAL_FOLDER(This)
    	'-------------------------------------------------------------------------------------
    	' PluginTemplate Main Variables
    	'-------------------------------------------------------------------------------------

		WHATSAPP_EKLENTI_ACTIVE 			= Cint( GetSettings(""& PLUGIN_CODE &"_ACTIVE","0") )
		WHATSAPP_EKLENTI_TELEFON 			= GetSettings(""& PLUGIN_CODE &"_TELEFON", "")
		WHATSAPP_EKLENTI_MESAJ 				= GetSettings(""& PLUGIN_CODE &"_MESAJ", "Ürünleriniz hakkında bilgi almak istiyorum")
		WHATSAPP_EKLENTI_KARSILAMA 			= GetSettings(""& PLUGIN_CODE &"_KARSILAMA", "Merhaba, size nasıl yardımcı olabiliriz?")
		WHATSAPP_EKLENTI_ADI 				= GetSettings(""& PLUGIN_CODE &"_ADI", "Müşteri Temsilcisi")
		WHATSAPP_EKLENTI_POZISYON 			= GetSettings(""& PLUGIN_CODE &"_POZISYON", "Left")
		WHATSAPP_EKLENTI_TIMING_MSG 		= GetSettings(""& PLUGIN_CODE &"_TIMING_MSG", "Genellikle bir saat içinde yanıt verir")
		WHATSAPP_EKLENTI_BTN_TEXT 			= GetSettings(""& PLUGIN_CODE &"_BTN_TEXT", "Bize Yazın")
		WHATSAPP_EKLENTI_TYPEMSG 			= GetSettings(""& PLUGIN_CODE &"_TYPEMSG", "Bize Yazın")

		' Hook Footer
		'------------------------------
		Cms.FooterData = WhatsappWidgetData()

    	'-------------------------------------------------------------------------------------
    	' PluginTemplate Register App
    	'-------------------------------------------------------------------------------------
    	class_register()
	End Sub
	'---------------------------------------------------------------
	' Class First Init
	'---------------------------------------------------------------


	'---------------------------------------------------------------
	' Class Terminate
	'---------------------------------------------------------------
	Private sub class_terminate()

	End Sub
	'---------------------------------------------------------------
	' Class Terminate
	'---------------------------------------------------------------


	'---------------------------------------------------------------
	'
	'---------------------------------------------------------------
	Private Property Get WhatsappWidgetData()
		Dim wpCode
			wpCode = ""

		If WHATSAPP_EKLENTI_ACTIVE = 1 Then
			wpCode = "<whatsapp-widget id=""mwb_whatsapp"" number="""& Trim(WHATSAPP_EKLENTI_TELEFON) &""" name="""& WHATSAPP_EKLENTI_ADI &""" pre-msg="""& WHATSAPP_EKLENTI_MESAJ &""" type-msg="""& WHATSAPP_EKLENTI_TYPEMSG &""" timing-text="""& WHATSAPP_EKLENTI_TIMING_MSG &""" welcome-message="""& WHATSAPP_EKLENTI_KARSILAMA &""" avatar=""/favicon.ico"" position="""& WHATSAPP_EKLENTI_POZISYON &""" button-title="""& WHATSAPP_EKLENTI_BTN_TEXT &"""></whatsapp-widget>"
		End If

		WhatsappWidgetData = wpCode
	End Property
	'---------------------------------------------------------------
	'
	'---------------------------------------------------------------
End Class 
%>
