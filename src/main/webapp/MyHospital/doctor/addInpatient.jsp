<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hospital Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        #heading {
            position: fixed;
            left: 80px;
        }

        #img {
            position: fixed;
            right: 95px;
        }

        #title {
            position: fixed;
            right: 40px;
            padding-top: 12px;
        }

        #navbar {
            display: flex;
            align-items: center;
            position: relative;
            top: -8px;
            right: 15px;
            background-color: cornsilk;
            height: 100%;
            width: 104%;
            z-index: -1;
            opacity: 1;
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            z-index: 1;
            top: 75px;
            left: 0;
            background-color: #416ef7;
            overflow-x: hidden;
            padding-top: 16px;
        }

        .sidebar a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 20px;
            color: #ffffff;
            display: block;
        }

        .sidebar a:hover {
            color: #f1f1f1;
        }

        .main {
            margin-left: 250px;
            padding: 0px 10px;
        }

        @media screen and (max-height: 850px) {
            .sidebar {
                padding-top: 15px;
            }

            .sidebar a {
                font-size: 18px;
            }
        }

        ol {
            list-style: none;
            counter-reset: my-awesome-counter;
        }

        ol li {
            counter-increment: my-awesome-counter;
        }

        /* ol li::before {
            content: counter(my-awesome-counter) ". ";
            color: red;
            font-weight: bold;
        } */

        #h2 {
            position: relative;
            font-family: 'Roboto', sans-serif;
            left: 320px;
            top: 5px;
            font-size: 50px;
        }

        #doctor {
            position: fixed;
            right: 20px;
            top: 200px;
        }

        #box {
            display: flex;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            position: relative;
            left: 268px;
            top: 6px;
        }

        #content {
            margin-left: 0px;
        }

        .text-block {
            position: absolute;
            bottom: 50px;
            left: 49px;
            margin-left: 50px;
            background-color: white;
            opacity: 70%;
            color: rgb(10, 10, 10);
            padding-left: 20px;
            padding-right: 20px;
            height: 430px;
            width: 547px;
            border: 3px solid blue;
        }

        .form {
            padding: 10px;
        }

        label {
            width: 180px;
            clear: left;
            text-align: right;
            padding-right: 20px;
            margin: 0px;
        }

        html,
        body {
            max-width: 100%;
            max-height: 1000px;
            overflow-x: hidden;
            overflow-y: hidden;
            font-family: "Lato", sans-serif;
        }
    </style>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../assets/css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>

<body style="background-color: #dfdfdf9c;">

    <nav class="navbar navbar-light bg-white">

        <h1 class="logo me-auto" style="margin-left:0px;"> <img src="../assets/img/Dashboard/logo.png"
                alt="hospital.com" height="50px" width="50px"> <a class="navbar-brand" href="#">Medilab</h1>
        <form class="form-inline">
            <button class="btn btn-outline-success" type="button">Log Out</button>
        </form>
    </nav>
    <div class="sidebar">
        <div class="row" style="margin: 1px ; width: 200px; height: 100px;">
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;"
                style="margin:20px; padding: 5px;">
                <img src="../assets/img/admin_logo1.png"
                    style="border-radius: 50%; padding: 0%; margin: 0px; background-color: #ffffff;" width="60px"
                    height="60px" alt="Avatar" class="avatar">
            </div>
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 1px; margin-bottom: 20px;">
                <div class="row" style="margin-top: 25px; margin-left: auto;">
                    <h4 style="color: rgb(255, 255, 255);"><b> ${name}</b></h4>
                </div>
                <div class="row" style="margin-top: 25px; margin-left: auto;">
                    <h4 style="color: rgb(255, 255, 255);"><b> ${dept}</b></h4>
                </div>
            </div>
        </div>
        <div>
            <a href="/HMS/MyHospital/screens/dashboard.jsp"><i class="fa fa-fw fa-home"></i> Dashboard</a>
            <a href="/HMS/MyHospital/screens/profile.jsp"><i class="fa fa-fw fa-wrench"></i> Profile</a>
            <a href="/HMS/MyHospital/screens/inpatient.jsp"><i class="fa fa-fw fa-user"></i> Inpatients Book</a>
            <a href="/HMS/MyHospital/screen/outpatient.jsp"><i class="fa fa-fw fa-user"></i> Outpatients Book</a>
            <a href="/HMS/MyHospital/screens/addDoctor.jsp"><i class="fa fa-fw fa-envelope"></i> Add Doctors</a>
            <a href="/HMS/MyHospital/screens/addStaff.jsp"><i class="fa fa-fw fa-envelope"></i> Add Staff Member</a>
            <a href="/HMS/MyHospital/screens/staffBook.jsp"><i class="fa fa-fw fa-envelope"></i>Staff Book</a>
            <a href="/HMS/MyHospital/screens/doctorBook.jsp"><i class="fa fa-fw fa-envelope"></i>Doctors Book</a>
        </div>

    </div>
    <div id="content">
        <div id="h2">Add Doctor</div>
        <div id="box">
            <img style="margin-left: 50px; margin-top: 10px;" src="../assets/img/Dashboard/bg.jpg" height="500px"
                width="680px">
            <form name="addDoctor" action="/HMS/AddDoctor" onsubmit="return validateForm()" method="GET">
                <div class="text-block ">
                    <div class="form ">
                        <label for="name "><b>Patient's Name:</b></label>
                        <input type="text " name="name " id="name " placeholder="Enter Name ">
                    </div>
                    <div class="form">
                        <label for="id"><b>Patient's id:</b></label>
                        <input type="number" name="id" id="id" min="1" placeholder="Enter id">
                    </div>
                    <div class="form ">
                        <label for="name "><b>Address:</b></label>
                        <input type="text " name="name " id="name " placeholder="Enter address ">
                    </div>
                    <div class="form ">
                        <label for="name "><b>Mobile no.:</b></label>
                        <input type="phone " name="name " id="name " placeholder="Enter Mobile number ">
                    </div>
                    <div class="form ">
                        <label for="name "><b>Disease Name:</b></label>
                        <input type="text " name="name " id="name " placeholder="Enter name of disease ">
                    </div>
                    <div class="form" style="margin-top: 0px;">
                        <label for="gender"><b>Gender:</b></label>
                        <b>Male&ensp;</b><input type="radio" name="male" id="gender">
                        <b>Female&ensp;</b><input type="radio" name="female" id="gender">
                        <!-- <b>Other&ensp;</b><input type="radio" name="name" id="name"> -->
                    </div>

                    <div class="form">
                        <label for="name"><b>lab no:</b></label>
                        <input type="number" name="name" id="name" min="1" placeholder="Enter lab no.">
                    </div>
                    <div class="form" style="margin-left: 185px;">
                        <input type="submit" value="submit now">
                    </div>


                </div>
            </form>
        </div>

    </div>
    <div id="doctor" class="column">
        <img src="../assets/img/Dashboard/doctor.png" alt="doctor.com" height="400px" width="500px">
    </div>



</body>

</html>