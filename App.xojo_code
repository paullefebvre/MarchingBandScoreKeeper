#tag Class
Protected Class App
Inherits IOSApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Function Open(launchOptionsHandle as Ptr) As Boolean
		  // Initialize SQLite database in the Documents folder
		  
		  Dim dbFile As FolderItem = SpecialFolder.Documents.Child("MarchingBandScore.sqlite")
		  
		  DB = New iOSSQLiteDatabase
		  DB.DatabaseFile = dbFile
		  If Not dbFile.Exists Then
		    // Create the database and the tables
		    If DB.CreateDatabaseFile Then
		      Try
		        DB.SQLExecute(kShowTable)
		        DB.SQLExecute(kScoreTable)
		      Catch e As iOSSQLiteException
		        // Yikes!
		        // This would be really bad (low storage?) so may want
		        // to show an error view.
		      End Try
		    End If
		  Else
		    // Connect to the database
		    If DB.Connect Then
		      // All good!
		    End If
		  End If
		End Function
	#tag EndEvent


	#tag Property, Flags = &h0
		DB As iOSSQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = kScoreTable, Type = Text, Dynamic = False, Default = \"CREATE TABLE [Score] (\n  [ID] INTEGER NOT NULL\x2C\n  [ShowID] INTEGER\x2C\n  [DrumMajorScore] INTEGER\x2C\n  [ColorGuardScore] INTEGER\x2C\n  [VisualScore] INTEGER\x2C\n  [PercussionScore] INTEGER\x2C\n  [MusicScore] INTEGER\x2C\n  [GeneralEffectScore] INTEGER\x2C\n  [OverallScore] INTEGER\x2C \n  PRIMARY KEY ([ID])\n);", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kShowTable, Type = Text, Dynamic = False, Default = \"CREATE TABLE [Show] (\n  [ID] INTEGER NOT NULL\x2C\n  [Name] TEXT\x2C\n  [Location] TEXT\x2C\n  [Date] TEXT\x2C \n  PRIMARY KEY ([ID])\n);", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
