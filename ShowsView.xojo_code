#tag IOSView
Begin iosView ShowsView
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "1"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Shows"
   Top             =   0
   Begin iOSToolButton AddShowButton
      Caption         =   "Untitled"
      Enabled         =   True
      Height          =   22
      Image           =   "0"
      Image           =   "0"
      Left            =   8
      LockedInPosition=   False
      Scope           =   2
      Top             =   32
      Type            =   "4"
      Width           =   22.0
   End
   Begin iOSTable ShowsTable
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AutoLayout      =   ShowsTable, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ShowsTable, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   ShowsTable, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ShowsTable, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "0"
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  ShowDataSource.Load
		  ShowsTable.ReloadData
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  ShowDataSource = New ShowData
		  ShowDataSource.Load
		  ShowsTable.DataSource = ShowDataSource
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  Select Case button
		  Case AddShowButton
		    Dim v As New ShowDetailView
		    Self.ShowModal(v)
		  End Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub LoadShows()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ShowDataSource As ShowData
	#tag EndProperty


#tag EndWindowCode

#tag Events ShowsTable
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  // Show scores for this show
		  Dim v As New ScoresView
		  v.ShowID = Me.RowData(section, row).Tag
		  v.Load
		  Self.PushTo(v)
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
