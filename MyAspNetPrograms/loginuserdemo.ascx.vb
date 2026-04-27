
Partial Class loginuserdemo
    Inherits System.Web.UI.UserControl
    Public Property userid As String
        Get
            Return TextBox1.Text
        End Get
        Set(ByVal value As String)
            TextBox1.Text = value
        End Set
    End Property
    Public Property pass As String
        Get
            Return TextBox2.Text
        End Get
        Set(ByVal value As String)
            TextBox2.Text = value
        End Set
    End Property
End Class
