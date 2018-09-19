#tag Module
Protected Module Extensions
	#tag Method, Flags = &h0
		Sub CloseModal(Extends v As iOSView)
		  // Close the Modal view to return to the calling view
		  Declare Sub dismissViewController Lib "UIKit" _
		  Selector "dismissViewControllerAnimated:completion:" _
		  (parentView As Ptr, animated As Boolean, completion As Ptr)
		  
		  dismissViewController(v.Handle, True, Nil)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowModal(Extends v As iOSView, mv As iOSView)
		  // Display the View mv modally
		  Declare Sub presentViewController Lib "UIKit" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  
		  presentViewController(v.Handle, mv.Handle, True, Nil)
		End Sub
	#tag EndMethod


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
	#tag EndViewBehavior
End Module
#tag EndModule
