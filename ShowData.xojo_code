#tag Class
Protected Class ShowData
Implements iOSTableDataSource
	#tag Method, Flags = &h0
		Sub Load()
		  ReDim Shows(-1)
		  Dim sql As Text = "SELECT * FROM Show;"
		  Dim results As iOSSQLiteRecordSet
		  results = App.DB.SQLSelect(sql)
		  While Not results.EOF
		    Dim s As New Show
		    s.ID = results.Field("ID").IntegerValue
		    s.Name = results.Field("Name").TextValue
		    s.Location = results.Field("Location").TextValue
		    s.Date = results.Field("Date").TextValue
		    Shows.Append(s)
		    results.MoveNext
		  Wend
		  results.Close
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(table as iOSTable, section As Integer) As Integer
		  // Part of the iOSTableDataSource interface.
		  
		  Return Shows.Ubound + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table as iOSTable, section As Integer, row As Integer) As iOSTableCellData
		  // Part of the iOSTableDataSource interface.
		  
		  // Create the cell to display
		  Dim cell As iOSTableCellData = table.CreateCell
		  cell.Text = Shows(row).Location + " (" + Shows(row).Date + ")"
		  cell.DetailText = Shows(row).Name
		  cell.Tag = Shows(row).ID
		  
		  Return cell
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount(table as iOSTable) As Integer
		  // Part of the iOSTableDataSource interface.
		  
		  Return 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionTitle(table as iOSTable, section As Integer) As Text
		  // Part of the iOSTableDataSource interface.
		  
		  Return ""
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shows() As Show
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Shows()"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
