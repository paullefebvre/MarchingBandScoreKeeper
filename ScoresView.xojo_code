#tag IOSView
Begin iosView ScoresView
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "0"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Scores"
   Top             =   0
   Begin iOSSegmentedControl DrumMajorStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DrumMajorStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   DrumMajorStarRating, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   DrumMajorStarRating, 3, DrumMajorLabel, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   DrumMajorStarRating, 7, <Parent>, 7, False, +0.40, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   73
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel DrumMajorLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   DrumMajorLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   DrumMajorLabel, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   DrumMajorLabel, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   DrumMajorLabel, 7, <Parent>, 7, False, +0.40, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Drum Major"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl ColorGuardStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ColorGuardStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   ColorGuardStarRating, 1, DrumMajorStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ColorGuardStarRating, 3, DrumMajorStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ColorGuardStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   110
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl VisualStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   VisualStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   VisualStarRating, 1, ColorGuardStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   VisualStarRating, 3, ColorGuardStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   VisualStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   147
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl PercussionStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   PercussionStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   PercussionStarRating, 1, VisualStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PercussionStarRating, 3, VisualStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   PercussionStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   184
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl MusicStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MusicStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   MusicStarRating, 1, PercussionStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MusicStarRating, 3, PercussionStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   MusicStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   221
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl GeneralEffectStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GeneralEffectStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   GeneralEffectStarRating, 1, MusicStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   GeneralEffectStarRating, 3, MusicStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   GeneralEffectStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   258
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSSegmentedControl OverallStarRating
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   OverallStarRating, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   OverallStarRating, 1, GeneralEffectStarRating, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   OverallStarRating, 3, GeneralEffectStarRating, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   OverallStarRating, 7, DrumMajorStarRating, 7, False, +1.00, 4, 1, 0, , True
      Caption         =   ""
      Enabled         =   True
      Height          =   29.0
      Left            =   172
      LockedInPosition=   False
      Scope           =   2
      Segments        =   "1\n\nFalse\r2\n\nFalse\r3\n\nFalse\r4\n\nFalse\r5\n\nFalse"
      Top             =   295
      Value           =   -1
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel ColorGuardLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ColorGuardLabel, 11, ColorGuardStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ColorGuardLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ColorGuardLabel, 1, DrumMajorLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ColorGuardLabel, 7, DrumMajorLabel, 7, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Color Guard"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   109
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel VisualLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   VisualLabel, 1, ColorGuardLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   VisualLabel, 7, , 0, False, +1.00, 4, 1, 128, , True
      AutoLayout      =   VisualLabel, 11, VisualStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   VisualLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Visual"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   146
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel PercussionLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   PercussionLabel, 11, PercussionStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PercussionLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   PercussionLabel, 1, VisualLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PercussionLabel, 7, DrumMajorLabel, 7, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Percussion"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   183
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel MusicLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MusicLabel, 1, PercussionLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MusicLabel, 7, , 0, False, +1.00, 4, 1, 128, , True
      AutoLayout      =   MusicLabel, 11, MusicStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MusicLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Music"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   220
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel GeneralEffectLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GeneralEffectLabel, 11, GeneralEffectStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   GeneralEffectLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   GeneralEffectLabel, 1, MusicLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   GeneralEffectLabel, 7, DrumMajorLabel, 7, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "General Effect"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   257
      Visible         =   True
      Width           =   128.0
   End
   Begin iOSLabel OverallEffectLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   OverallEffectLabel, 11, OverallStarRating, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   OverallEffectLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   OverallEffectLabel, 1, GeneralEffectLabel, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   OverallEffectLabel, 7, DrumMajorLabel, 7, False, +1.00, 4, 1, 0, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Overall"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   294
      Visible         =   True
      Width           =   128.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Load()
		  Dim scoreSQL As Text = "SELECT * FROM Score WHERE ShowID = ?1"
		  Dim results As iOSSQLiteRecordSet
		  
		  Try
		    results = App.DB.SQLSelect(scoreSQL, ShowID)
		    If Not results.EOF Then
		      Dim dmScore As Integer = results.Field("DrumMajorScore").IntegerValue - 1
		      DrumMajorStarRating.Item(dmScore).Selected = True
		      
		      Dim cgScore As Integer = results.Field("ColorGuardScore").IntegerValue - 1
		      ColorGuardStarRating.Item(cgScore).Selected = True
		      
		      Dim vScore As Integer = results.Field("VisualScore").IntegerValue - 1
		      VisualStarRating.Item(vScore).Selected = True
		      
		      Dim pScore As Integer = results.Field("PercussionScore").IntegerValue - 1
		      PercussionStarRating.Item(pScore).Selected = True
		      
		      Dim mScore As Integer = results.Field("MusicScore").IntegerValue - 1
		      MusicStarRating.Item(mScore).Selected = True
		      
		      Dim geScore As Integer = results.Field("GeneralEffectScore").IntegerValue - 1
		      GeneralEffectStarRating.Item(geScore).Selected = True
		      
		      Dim oScore As Integer = results.Field("OverallScore").IntegerValue - 1
		      OverallStarRating.Item(oScore).Selected = True
		    End If
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Update(col As Text, value As Integer)
		  Dim updateSQL As Text = "UPDATE Score SET " + col + "=?1 WHERE ShowID = ?2"
		  
		  Try
		    App.DB.SQLExecute(updateSQL, value, ShowID)
		  Catch e As iOSSQLiteException
		    // Yikes!
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ShowID As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events DrumMajorStarRating
	#tag Event
		Sub ValueChanged()
		  Update("DrumMajorScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ColorGuardStarRating
	#tag Event
		Sub ValueChanged()
		  Update("ColorGuardScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events VisualStarRating
	#tag Event
		Sub ValueChanged()
		  Update("VisualScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PercussionStarRating
	#tag Event
		Sub ValueChanged()
		  Update("PercussionScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MusicStarRating
	#tag Event
		Sub ValueChanged()
		  Update("MusicScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeneralEffectStarRating
	#tag Event
		Sub ValueChanged()
		  Update("GeneralEffectScore", Me.Value + 1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OverallStarRating
	#tag Event
		Sub ValueChanged()
		  Update("OverallScore", Me.Value + 1)
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
