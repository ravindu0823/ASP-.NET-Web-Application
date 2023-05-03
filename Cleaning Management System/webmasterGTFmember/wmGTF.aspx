<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wmGTF.aspx.cs" Inherits="webmasterGTFmember.wmGTF" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form  runat="server" >
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-header">
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        <!-- Bookmark Start-->

                        <!-- Bookmark Ends-->
                    </div>
                </div>
            </div>
        </div>



        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Topic</th>
                        <th scope="col">Place Name</th>
                        <th scope="col">Situation</th>
                        <th scope="col">Image</th>
                        <th>Responce </th>
                        <th>Delete Report</th>
                         <th>Edit Report</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Park, Glass Bottles</td>
                        <td>Children's Park Pathway, Colombo</td>
                        <td>Broken glass bottles found in the public square, posing a safety risk to pedestrians and park visitors.</td>
                        <td>
                            <img src="../assets/sample/img1.jpg" width="100" height="100"></td>
                        <td>pending..</td>
                        <td><asp:Button class="btn btn-pill btn-danger active" ID="Button1" runat="server" Text="Delete" /></td>
                        
                        <td><asp:Button class="btn btn-pill btn-warning btn-air-warning active" ID="Button2" runat="server" Text="Edit" /></td>
                        
                    </tr>

                </tbody>
            </table>
        </div>
        </div>

        </form>

        <!-- Container-fluid Ends-->
        <!-- latest jquery-->
        <script src="../assets/js/jquery-3.5.1.min.js"></script>
        <!-- feather icon js-->
        <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
        <script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
        <!-- Sidebar jquery-->
        <script src="../assets/js/sidebar-menu.js"></script>
        <script src="../assets/js/config.js"></script>
        <!-- Bootstrap js-->
        <script src="../assets/js/bootstrap/popper.min.js"></script>
        <script src="../assets/js/bootstrap/bootstrap.min.js"></script>
        <!-- Plugins JS start-->
        <script src="../assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
        <script src="../assets/js/jsgrid/jsgrid.min.js"></script>
        <script src="../assets/js/jsgrid/griddata.js"></script>
        <script src="../assets/js/jsgrid/jsgrid.js"></script>
        <!-- Plugins JS Ends-->
        <!-- Theme js-->
        <script src="../assets/js/script.js"></script>
        <script src="../assets/js/theme-customizer/customizer.js"></script>
        <!-- login js-->
        <!-- Plugin used-->
</asp:Content>
