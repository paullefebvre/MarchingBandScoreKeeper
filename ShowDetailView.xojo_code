#tag IOSView
Begin iosView ShowDetailView
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Show Details"
   Top             =   0
   Begin iOSTextField LocationField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   LocationField, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   LocationField, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   LocationField, 3, ShowNameField, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   LocationField, 8, , 0, True, +1.00, 4, 1, 31, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Show Location"
      Scope           =   2
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   178
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSDatePicker ShowDatePicker
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ShowDatePicker, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ShowDatePicker, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   ShowDatePicker, 3, LocationField, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ShowDatePicker, 8, , 0, True, +1.00, 4, 1, 162, , True
      CountDownDuration=   0.0
      Enabled         =   True
      Height          =   162.0
      Left            =   0
      LockedInPosition=   False
      MinuteInterval  =   0
      Mode            =   "2"
      Scope           =   2
      Top             =   217
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSTextField ShowNameField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ShowNameField, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   ShowNameField, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   ShowNameField, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   ShowNameField, 3, Separator1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Show Name"
      Scope           =   2
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   139
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton SaveButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SaveButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   SaveButton, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   SaveButton, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   SaveButton, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Save"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton CancelButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CancelButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CancelButton, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   CancelButton, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   CancelButton, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Cancel"
      Enabled         =   True
      Height          =   30.0
      Left            =   200
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSeparator Separator1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Separator1, 8, , 0, True, +1.00, 4, 1, 20, , True
      AutoLayout      =   Separator1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Separator1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Separator1, 3, SaveButton, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      Height          =   20.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      Top             =   111
      Visible         =   True
      Width           =   280.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events SaveButton
	#tag Event
		Sub Action()
		  Try
		    // Add the show itself
		    Dim showSQL As Text = "INSERT INTO Show (Name, Location, Date) VALUES (?1, ?2, ?3);"
		    App.DB.SQLExecute(showSQL, ShowNameField.Text, LocationField.Text, ShowDatePicker.DefaultDate.ToText)
		    Dim showID As Integer = App.DB.LastRowID
		    
		    // Add initial score data
		    Dim scoreSQL As Text = "INSERT INTO Score (ShowID, DrumMajorScore, ColorGuardScore, VisualScore, PercussionScore, MusicScore, GeneralEffectScore, OverallScore) " + _
		    "VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8);"
		    App.DB.SQLExecute(scoreSQL, showID, 3, 3, 3, 3, 3, 3, 3)
		    
		    Self.CloseModal
		  Catch e As iOSSQLiteException
		    // Yikes!
		    Break
		  End Try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CancelButton
	#tag Event
		Sub Action()
		  Self.CloseModal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
