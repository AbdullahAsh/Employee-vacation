<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Vacation.Admin" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
    <title></title>

<body>
       <form id="form2" runat="server">

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

    <Columns>

        <asp:BoundField DataField="Submission_Date" HeaderText="Submission Date" />

        <asp:BoundField DataField="Emp_Name" HeaderText="Employee Name" />

        <asp:BoundField DataField="Leave_From" HeaderText="From" />    
        
         <asp:BoundField DataField="Leave_To" HeaderText="To" />
    

        

    

      
    

        

    

        

        <asp:HyperLinkField DataNavigateUrlFields="Emp_Name" DataNavigateUrlFormatString="Admin.aspx?Emp_Name={0}" Text="More Info" />
    

        

    

      
    

        

    

        

    </Columns>

</asp:GridView>


           
           
           
           
           
           
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdminConnectionString4 %>" SelectCommand="SELECT [Submission_Date], [Emp_Name], [Emp_Dept], [Leave_From], [Leave_To] FROM [admin]"></asp:SqlDataSource>
&nbsp;
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Submission_Date,Emp_Name" DataSourceID="SqlDataSource2">
               <Columns>
                   <asp:BoundField DataField="Submission_Date" HeaderText="Submission_Date" ReadOnly="True" SortExpression="Submission_Date" />
                   <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" ReadOnly="True" SortExpression="Emp_Name" />
                   <asp:BoundField DataField="Emp_Dept" HeaderText="Emp_Dept" SortExpression="Emp_Dept" />
                   <asp:BoundField DataField="Leave_From" HeaderText="Leave_From" SortExpression="Leave_From" />
                   <asp:BoundField DataField="Leave_To" HeaderText="Leave_To" SortExpression="Leave_To" />
                   <asp:BoundField DataField="More_Info" HeaderText="More_Info" SortExpression="More_Info" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdminConnectionString4 %>" SelectCommand="SELECT * FROM [admin] WHERE ([Emp_Name] = @Emp_Name)">
               <SelectParameters>
                   <asp:QueryStringParameter Name="Emp_Name" QueryStringField="Emp_Name" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>


           
           
           
           
           
           
</form>
</body>
</html>

  

