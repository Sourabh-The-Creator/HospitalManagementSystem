<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>HTML 5 Boilerplate</title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"
            id="bootstrap-css">
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
                margin: 50px 0;
            }

            /* Profile sidebar */

            .profile-sidebar {
                padding: 20px 0 10px 0;
                background: #fff;
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
                font-size: 16px;
                font-weight: 600;
                margin-bottom: 7px;
            }

            .profile-usertitle-job {
                text-transform: uppercase;
                color: #5b9bd1;
                font-size: 12px;
                font-weight: 600;
                margin-bottom: 15px;
            }

            .profile-userbuttons {
                text-align: center;
                margin-top: 10px;
            }

            .profile-userbuttons .btn {
                text-transform: uppercase;
                font-size: 11px;
                font-weight: 600;
                padding: 6px 15px;
                margin-right: 5px;
            }

            .profile-userbuttons .btn:last-child {
                margin-right: 0px;
            }

            .profile-usermenu {
                margin-top: 30px;
            }

            .profile-usermenu ul li {
                border-bottom: 1px solid #f0f4f7;
            }

            .profile-usermenu ul li:last-child {
                border-bottom: none;
            }

            .profile-usermenu ul li a {
                color: #93a3b5;
                font-size: 14px;
                font-weight: 400;
            }

            .profile-usermenu ul li a i {
                margin-right: 8px;
                font-size: 14px;
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
                min-height: 460px;
            }
        </style>
    </head>

    <body>

        <center>
            <div>
                <h1 class="c">My Profile</h1>

            </div>
            <center>
                <div class="container" style="margin-left: 200px;margin-right: 200px; width: 400px;">
                    <div class="row profile">
                        <div>
                            <div class="profile-sidebar">
                                <!-- SIDEBAR USERPIC -->
                                <div class="profile-userpic"><img src="../assets/img/Dashboard/profile.png"
                                        class="img-responsive" alt=""></div>
                                <!-- END SIDEBAR USERPIC -->
                                <!-- SIDEBAR USER TITLE -->
                                <div class="profile-usertitle">
                                    <div class="profile-usertitle-name">Marcus Doe </div>
                                    <div class="profile-usertitle-job">Administrator</div>
                                </div>
                                <!-- END SIDEBAR USER TITLE -->
                                <div class="profile-usermenu">
                                    <ul class="nav">
                                        <li><a href="# "><i class="glyphicon glyphicon-envelope"></i>Email</a></li>
                                        <li><a href="# "><i class="glyphicon glyphicon-tag"></i>Account ID </a></li>
                                        <!-- <li><a href="# " target="_blank "><i class="glyphicon glyphicon-ok "></i>Tasks </a></li> -->
                                        <li><a href="# "><i class="glyphicon glyphicon-user "></i>Gender</a></li>
                                    </ul>
                                </div>
                                <!-- END MENU -->
                                <!-- SIDEBAR BUTTONS -->
                                <div class="profile-userbuttons">
                                    <button type="button " class="btn-success btn-sm text-white"
                                        style="margin-right:20px;">Edit</button>
                                    <button type="button " class="btn-danger btn-sm text-white"
                                        style="margin-left:20px;"
                                        onclick=location.href="${pageContext.request.contextPath}/MyHospital/screens/dashboard.jsp">Close</button>
                                </div>
                                <!-- END SIDEBAR BUTTONS -->
                                <!-- SIDEBAR MENU -->


                            </div>
                        </div>
                    </div>
                </div>
            </center>
    </body>

    </html>