﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="Library_Website.Ammar.AddRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Room</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />



    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

<link href="\Rudaina\css\style.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-custom {
            max-width: 600px;
            margin: auto;
            border-radius: 12px;
            border: none;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            font-size: 16px;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }
        .file-upload {
            border: 2px dashed #ced4da;
            border-radius: 6px;
            padding: 10px;
            text-align: center;
            background-color: #fff;
            cursor: pointer;
        }
        .file-upload:hover {
            border-color: #007bff;
        }
        .message {
            padding: 10px;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <!-- Navbar start -->
<div class="container-fluid fixed-top">
    <div class="container topbar bg-primary d-none d-lg-block"  style="visibility:hidden!important;">
        <div class="d-flex justify-content-between">
            <div class="top-info ps-2">
                <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
            </div>
            <div class="top-link pe-2">
                <a href="#" class="text-white"><small class="text-white mx-2">Privacy Policy</small>/</a>
                <a href="#" class="text-white"><small class="text-white mx-2">Terms of Use</small>/</a>
                <a href="#" class="text-white"><small class="text-white ms-2">Sales and Refunds</small></a>
            </div>
        </div>
    </div>
    <div class="container px-0">
        <nav class="navbar navbar-light bg-white navbar-expand-xl">
            <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Lengo Loop</h1></a>
            <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars text-primary"></span>
            </button>
            <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    
                    <a href="/Rudaina/Dashboard.aspx" class="nav-item nav-link">Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="/Rudaina/BookManagment.aspx" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Book Management</a>
                        <div class="dropdown-menu m-0 bg-secondary rounded-0">
                            <a href="/Rudaina/Dashboard.aspx" class="dropdown-item">Modify Books</a>
                            <a href="/Rudaina/Requests.aspx" class="dropdown-item">Request</a>
                          
                        </div>
                    </div>
                    <div class="nav-item dropdown">
    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Rooms mangment</a>
    <div class="dropdown-menu m-0 bg-secondary rounded-0">
        <a href="AdminRooms.aspx" class="dropdown-item">Admin rooms</a>
        <a href="EditRoom.aspx" class="dropdown-item">Edit room</a>
        <a href="AddRoom.aspx" class="dropdown-item">Add room</a>
        <a href="Requests.aspx" class="dropdown-item">Request</a>
    </div>
</div>
             <a href='<%= ResolveUrl("~/Rudaina/Home1.aspx") %>' class="btn btn-primary" style="background-color: #7d0ed7ba; border: none; margin-left: 40px;">Log Out</a>
                  
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->


    <div class="container mt-5">
        <form id="form1" runat="server">
            <div class="card card-custom p-4" style="margin-top:260px">
                <h2 class="text-center text-primary fw-bold">Add Room</h2>
                <hr />

                <!-- Room Name -->
                <div class="mb-3">
                    <asp:Label ID="lblRoomName" runat="server" AssociatedControlID="txtRoomName" CssClass="form-label fw-semibold" Text="Room Name"></asp:Label>
                    <asp:TextBox ID="txtRoomName" runat="server" CssClass="form-control" Placeholder="Enter room name"></asp:TextBox>
                </div>

                <!-- Capacity -->
                <div class="mb-3">
                    <asp:Label ID="lblCapacity" runat="server" AssociatedControlID="txtCapacity" CssClass="form-label fw-semibold" Text="Capacity"></asp:Label>
                    <asp:TextBox ID="txtCapacity" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Enter capacity"></asp:TextBox>
                </div>

                <!-- Description -->
                <div class="mb-3">
                    <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription" CssClass="form-label fw-semibold" Text="Description"></asp:Label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" Placeholder="Enter room description"></asp:TextBox>
                </div>

                <!-- File Upload -->
                <div class="mb-3">
                    <asp:Label ID="lblImage" runat="server" AssociatedControlID="fuImage" CssClass="form-label fw-semibold" Text="Upload Image"></asp:Label>
                    <div class="file-upload">
                        <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control-file" />
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="mb-3 text-center">
                    <asp:Button ID="btnAddRoom" runat="server" Text="Add Room" CssClass="btn btn-primary btn-custom" OnClick="btnAddRoom_Click" />
                </div>

                <!-- Success/Error Message -->
                <div class="text-center">
                    <asp:Label ID="lblmsg" runat="server" CssClass="message fw-bold d-block" ForeColor="Green" Visible="false"></asp:Label>
                </div>
            </div>
        </form>
    </div>

     <!-- Footer Start -->
<div class="container-fluid  text-white-50 footer pt-5 mt-5" style="background-color: #000000;">
    <div class="container py-5">
        <div class="pb-4 mb-4" style="border-bottom: 1px solid rgba(226, 175, 24, 0.5) ;">
            <div class="row g-4">
                <div class="col-lg-3">
                    <a href="#">
                        <h1 class="text-primary mb-0">Lengo Loop</h1>
                        <p class="text-secondary mb-0">Educational Institue</p>
                    </a>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative mx-auto">
                        <input class="form-control border-0 w-100 py-3 px-4 rounded-pill" type="number" placeholder="Your Email">
                        <button type="submit" class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white" style="top: 0; right: 0;">Subscribe Now</button>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="d-flex justify-content-end pt-3">
                        <a class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-secondary me-2 btn-md-square rounded-circle" href=""><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-secondary btn-md-square rounded-circle" href=""><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Why People Like us!</h4>
                    <p class="mb-4">typesetting, remaining essentially unchanged. It was 
                        popularised in the 1960s with the like Aldus PageMaker including of Lorem Ipsum.</p>
                    <a href="" class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read More</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Shop Info</h4>
                    <a class="btn-link" href="">About Us</a>
                    <a class="btn-link" href="">Contact Us</a>
                    <a class="btn-link" href="">Privacy Policy</a>
                    <a class="btn-link" href="">Terms & Condition</a>
                    <a class="btn-link" href="">Return Policy</a>
                    <a class="btn-link" href="">FAQs & Help</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="d-flex flex-column text-start footer-item">
                    <h4 class="text-light mb-3">Account</h4>
                    <a class="btn-link" href="">My Account</a>
                    <a class="btn-link" href="">Shop details</a>
                    <a class="btn-link" href="">Shopping Cart</a>
                    <a class="btn-link" href="">Wishlist</a>
                    <a class="btn-link" href="">Order History</a>
                    <a class="btn-link" href="">International Orders</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-item">
                    <h4 class="text-light mb-3">Contact</h4>
                    <p>Address: 1429 Netus Rd, NY 48247</p>
                    <p>Email: Smart Academy@gmail.com</p>
                    <p>Phone: +0123 4567 8910</p>
                    <p>Payment Accepted</p>
                    <img src="img/payment.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

</body>
</html>
