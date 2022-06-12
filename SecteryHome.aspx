<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="SecteryHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <!-- SLIDER -->
 <!--   
        <div class="row" style="margin-top: 60px">
        </div>
 -->

        <div class="row d-flex justify-content-center align-items-center zoomIn" style="margin-top:60px">
                    <!-- left side div -->
                    <div class="col-md-6 col-12 main_header_left ">
                        <h1>Welcome To <span class="text-success">Village Council</span> Web Portal App</h1>
                        <h4>(Provide Online Facility)</h4>
                    </div>
                    <!-- Right side div -->
                    <div class="col-md-6 col-12 main_header_right">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    

  </ol>
  <div class="carousel-inner" style="border-radius:25px">
    <div class="carousel-item active">
      <img class="d-block w-100 img-fluid" src="assets/img/slider/1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img-fluid" src="assets/img/slider/2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img-fluid" src="assets/img/slider/3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                    </div>
                </div>
    <!-- SLIDER -->

    <hr />

    <!-- WELCOME MEMBER -->
        <div class="bounceIn" style="margin-top:23px">
            <center><h2 style="border-bottom:1px solid green; display:inline-block; margin-top: 15px;text-transform:capitalize;">WELCOME TO VILLAGE COUNCIL SECRETARY</h2></center>
            <br />
            <center>
            <table>
                <tr>
                    <td><h2 style="text-transform:capitalize;" >Secretary Name: </td>
                    <td><h2 style="text-transform:capitalize;" ><asp:Label class="text-success" ID="lbluid" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><h2 style="text-transform:capitalize;" >Contact Number: </td>
                    <td><h2 style="text-transform:capitalize;" ><asp:Label class="text-success" ID="Label1" runat="server"></asp:Label></td>

                </tr>
                <tr>
                    <td><h2 style="text-transform:capitalize;" >Village Council: </td>
                    <td><h2 style="text-transform:capitalize;" ><asp:Label class="text-success" ID="Label2" runat="server"></asp:Label></td>

                </tr>

            </table>
    </center>


 </div>
              <!-- WELCOME MEMBER -->
     <hr />

     <!-- Services -->
          <div class="services-container">
              <center><h2 style="border-bottom:1px solid green; display:inline-block; margin-top: 15px;">Services</h2></center>
	        <div class="container" style="padding: 0px!important;">
	            <div class="row" style="margin-top:30px; ">
                    <div class="col-sm-10 col-md-4 col-lg-3 col-xl-3 " style="height: 445px">
                        <div class="card " style="width: 16rem; border-bottom:5px solid black;box-shadow: inset 0 0 10px black !important;height: 445px">
                            <img class="card-img-top" src="assets/service1.JFIF" alt="Card image cap">
                          <div class="card-body" style="height:322px;">
                            <h5 class="card-title">Village Councils</h5>
                            <p class="card-text">Union Council members are directly elected my peoples.</p>
                         <!--   <a href="#" class="btn btn-primary">Read more</a> -->
                          </div>
                        </div>
                    </div>
                    <div class="col-sm-10 col-md-4 col-lg-3 col-xl-3 " style="height: 445px">
                        <div class="card" style="width: 16rem;border-bottom:5px solid black;box-shadow: inset 0 0 10px black !important;height: 445px">
                            <img class="card-img-top" src="assets/service2.JPG" alt="Card image cap">
                          <div class="card-body" style="height:322px;">
                            <h5 class="card-title">Secretary</h5>
                            <p class="card-text">The Secretary, under the supervision of the Nazim shall coordinate and facilitate in community development, functioning of the Committees and delivery of such municipal services as provided in the Act.</p>
                           <!--   <a href="#" class="btn btn-primary">Read more</a> -->
                          </div>
                        </div>
                    </div>
                    <div class="col-sm-10 col-md-4 col-lg-3 col-xl-3  "style="height: 445px">
                        <div class="card" style="width: 16rem;border-bottom:5px solid black;box-shadow: inset 0 0 10px black !important;height: 445px">
                            <img class="card-img-top" src="assets/service3.JPG" alt="Card image cap">
                          <div class="card-body" style="height:322px;">
                            <h5 class="card-title">Schools Informations</h5>
                            <p class="card-text">All the information about schools like school name village where is the school and who is the headmaster of school and the code of school and  contact number of the school all this record is kept in school information.</p>
                           <!--   <a href="#" class="btn btn-primary">Read more</a> -->
                          </div>
                        </div>
                    </div>
                    <div class="col-sm-10 col-md-4 col-lg-3 col-xl-3  "style="height: 445px">
                        <div class="card" style="width: 16rem;border-bottom:5px solid black;box-shadow: inset 0 0 10px black !important;height: 445px">
                            <img class="card-img-top" src="assets/service4.JPG" alt="Card image cap">
                          <div class="card-body" style="height:322px;">
                            <h5 class="card-title">Record Management</h5>
                            <p class="card-text">Birth Records/Death Records/Disable Records/Marriage Records</p>
                          <!--   <a href="#" class="btn btn-primary">Read more</a> -->
                          </div>
                        </div>
                    </div>
	            </div>
	        </div>
        </div>
      <!-- Services -->
    <hr />
     </asp:Content>

