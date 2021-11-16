<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>HTML 5 Boilerplate</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">

        <style>
            /***
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
***/
            
            h1.c {
                font-family: "Trirong", serif;
            }
            
            body {
                background: #F1F3FA; 
                
            }
            /* Profile container */
            
            .profile {
                margin: 60px;
                margin-right: 100px;
            }
            /* Profile sidebar */
            
            .profile-sidebar {
                padding-top: 10px;
                padding-bottom: 30px;
                background: #fff;
                width:350px;
            
            }
            
            .profile-userpic img {
                float: none;
                margin: 0 auto;
                width: 50%;
                height: 50%;
                -webkit-border-radius: 50% !important;
                -moz-border-radius: 50% !important;
                border-radius: 50% !important;
            }
            
            .profile-usertitle {
                text-align: center;
                margin-top: 20px;
            }
            
            .profile-usertitle-name {
                color: #526a88;
                font-size: 17px;
                font-weight: 800;
                margin-bottom: 7px;
            }
            
            .profile-usertitle-job {
                text-transform: uppercase;
                color: #5b9bd1;
                font-size: 18px;
                font-weight: 600;
                margin-bottom: 15px;
            }
            
            .profile-userbuttons {
                text-align: center;
                margin-top: 10px;
            }
            
            .profile-userbuttons .btn {
                text-transform: uppercase;
                font-size: 18px;
                font-weight: 600;
                padding: 6px 15px;
                margin-right: 5px;
            }
            
            .profile-userbuttons .btn:last-child {
                margin-right: 0px;
            }
            
            .profile-usermenu {
                margin-top: 30px;
               padding-left:60px;
            }
            
            .profile-usermenu ul li {
                font-size: 16px;
                font-weight:600;
                border-bottom: 1px solid #f0f4f7;
            }
            
            .profile-usermenu ul li:last-child {
                border-bottom: none;
                font-size: 16px;
                font-weight:600;
            }
            
            .profile-usermenu ul li a {
                color: #094e9d;
                font-size: 16px;
                font-weight:600;
            }
            
            .profile-usermenu ul li a i {
                margin-right: 8px;
                font-size: 16px;
            }
            
            .profile-usermenu ul li a:hover {
                background-color: #fafcfd;
                color: #5b9bd1;
            }
            
            .profile-usermenu ul li.active {
                border-bottom: none;
            }
            
            .profile-usermenu ul li.active a {
                color: #5b9bd1;
                background-color: #f6f9fb;
                border-left: 2px solid #5b9bd1;
                margin-left: -2px;
            }
            /* Profile Content */
            
            .profile-content {
                padding: 20px;
                background: #fff;
                min-height: 450px;
            }
        </style>
         <script>
         function callDashboard(){
      	   var email =  localStorage.getItem('email');
             location.href = "/HMS/dashboard?email="+email+"&&userType=Administrator" //2
         }
        window.onload = function(){
        	
        console.log(localStorage);
        if (localStorage.getItem('name')) { //if data exist (todos are in storage)
            
            document.getElementById('admin_name').innerHTML = localStorage.getItem('name'); //2
            document.getElementById('admin_email').innerHTML = localStorage.getItem('email'); //2
            document.getElementById('admin_id').innerHTML = localStorage.getItem('admin_id'); //2
            document.getElementById('gender').innerHTML = localStorage.getItem('gender'); //2
     
            
        } else { //if nothing exist in storage, keep todos array empty
            name = "Admin";
        }
        }

        </script>
    </head>

    <body style="background-image: url('<%=request.getContextPath()%>/MyHospital/assets/img/hero-bg.jpg')">
       
            <center>
            <div>
                <h1 style="font-weight:1000;" class="c">My Profile</h1>

            </div>
            </center>
         
                <div class="container" style="margin-left: 200px;margin-right: 200px; width: 400px;">
                    <div class="row profile">
                    
                        <div>
                    
                            <div class="profile-sidebar">
                                <!-- SIDEBAR USERPIC -->
                                <div class="profile-userpic"><img src="<%=request.getContextPath()%>/MyHospital/assets/img/Dashboard/profile.png" class="img-responsive" alt=""></div>
                                <!-- END SIDEBAR USERPIC -->
                                <!-- SIDEBAR USER TITLE -->
                                <div class="profile-usertitle">
                                    <div  class="profile-usertitle-name"><span id = "admin_name">admin_name</span></div>
                                    <div class="profile-usertitle-job">Administrator</div>
                                </div>
                                <!-- END SIDEBAR USER TITLE -->
                                <div class="profile-usermenu">
                                    <ul class="nav">
                                        <li ><a href="# "> <i class="glyphicon glyphicon-envelope"></i> <span  id="admin_email">admin_email</span></a></li>
                                        <li ><a href="# "><i class="glyphicon glyphicon-tag"> </i> ID: <span id="admin_id"> admin_id </span></a></li>
                                        <!-- <li><a href="# " target="_blank "><i class="glyphicon glyphicon-ok "></i>Tasks </a></li> -->
                                        <li ><a href="# "> <i class="glyphicon glyphicon-user "></i><span id="gender">gender</span></a></li>
                                    </ul>
                                </div>
                                <!-- END MENU -->
                                <!-- SIDEBAR BUTTONS -->
                                <div class="profile-userbuttons">
                                    <button type="button " class="btn-success btn-sm text-white" style="margin-right:20px;">Edit</button>
                                    <button type="button " class="btn-danger btn-sm text-white" style="margin-left:20px;" onclick="javascript:callDashboard()">Close</button>
                                </div>
                                <!-- END SIDEBAR BUTTONS -->
                                <!-- SIDEBAR MENU -->


                            </div>
                          
                        </div>
                        
                    </div>
                </div>
         
    </body>

    </html>