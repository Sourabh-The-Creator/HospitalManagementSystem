<!DOCTYPE html>
<html lang="en">

<head>
    <title>Hospital Management System</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * {
            marging: 0;
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

        body {
            font-family: "Lato", sans-serif;
        }

        .sidebar {
            height: 100%;
            width: 220px;
            position: fixed;
            z-index: 1;
            top: 90px;
            left: 0;
            background-color: rgb(58, 86, 209);
            overflow-x: hidden;
            padding-top: 16px;
        }

        .sidebar ul li {
            padding: 8px 8px 6px 16px;
            text-decoration: none;
            color: #f3eded;
            display: block;
            list-style: none;
            font-size: 1.5rem;
            font-family: 'Roboto', sans-serif;
        }

        .sidebar a:hover {
            color: rgb(252, 252, 18);
            cursor: pointer;
        }

        #h2 {
            position: relative;
            font-family: 'Roboto', sans-serif;
            left: 290px;
            top: 80px;
            font-size: 50px;
        }

        .main {
            margin-left: 160px;
            padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidebar {
                padding-top: 15px;
            }

            .sidebar a {
                font-size: 18px;
            }
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
            top: 90px;
        }

        #content {
            position: relative;
        }

        .text-block {
            position: absolute;
            bottom: 20px;
            left: 49px;
            margin-left: 50px;
            background-color: white;
            opacity: 70%;
            color: rgb(10, 10, 10);
            padding-left: 20px;
            padding-right: 20px;
            height: 320px;
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
    </style>

    <script>
        // function validateForm() {
        //     let x = document.forms["addDoctor"]["name"].value;
        //     let y = document.forms["addDoctor"]["phone"].value;
        //     alert(x + "  " + y);
        // }
    </script>
    <link rel="stylesheet" href="../assets/css/sidebar.css">
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
        <div class="row" style="width: 500px; height: 100px;">
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;"
                style="margin:20px; padding: 5px;">
                <img src="../assets/img/admin_logo1.png"
                    style="border-radius: 50%; padding: 0%; margin: 0px; background-color: #ffffff;" width="60px"
                    height="60px" alt="Avatar" class="avatar">
            </div>
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 1px; margin-bottom: 20px;">

                <div class="row" style="margin-top: 10px; margin-left: 2px;">
                    <h5 style="color: white;"><b>Name</b></h5>
                </div>
                <div class="row" style="margin-top: 0px; margin-left: 2px;">
                    <b style="color: white;">Department</b>
                </div>
            </div>
        </div>
        <a href="/HMS/MyHospital/screens/dashboard.jsp"><i class="fa fa-fw fa-home"></i> Dashboard</a>
        <a href="/HMS/adminProfile"><i class="fa fa-fw fa-wrench"></i> Profile</a>
        <a href="/HMS/viewInpatient"><i class="fa fa-fw fa-user"></i> Inpatients Book</a>
        <a href="/HMS/viewOutpatient"><i class="fa fa-fw fa-user"></i> Outpatients Book</a>
        <a href="/HMS/MyHospital/screens/addDoctor.jsp"><i class="fa fa-fw fa-envelope"></i> Add Doctors</a>
        <a href="/HMS/MyHospital/screens/addStaff.jsp"><i class="fa fa-fw fa-envelope"></i> Add Staff Member</a>
        <a href="/HMS/viewStaff"><i class="fa fa-fw fa-envelope"></i>Staff Book</a>
        <a href="/HMS/viewDoctor"><i class="fa fa-fw fa-envelope"></i>Doctors Book</a>
    </div>

    <div id="content">
        <div style="margin-left: 30px;" id="h2">Add Satff Memebr</div>
        <div id="box">
            <img style="margin-left: 50px;" src="../assets/img/Dashboard/bg.jpg" height="360px" width="680px">
            <form name="addDoctor" action="/HMS/addStaff" onsubmit="return validateForm()" method="GET">
                <div class="text-block">

                    <div class="form">
                        <label for="name"><b>Staff Name</b></label>
                        <input type="text" name="name" id="name" placeholder="Enter Name">
                    </div>

                    <div class="form">
                        <label for="id"><b>Staff ID:</b></label>
                        <input type="number" name="id" id="id" min="1" placeholder="Enter id">
                    </div>

                    <div class="form">
                        <label for="email"><b>Email.:</b></label>
                        <input type="email" name="email" id="email" placeholder="Enter Email">
                    </div>
                    <div class="form">
                        <label for="password"><b>Password.:</b></label>
                        <input type="password" name="password" id="password" placeholder="Enter Password">
                    </div>
                    <div class="form">
                        <label for="admin_id"><b>Admin's id:</b></label>
                        <input type="number" name="admin_id" id="admin_id" min="1" placeholder="Enter Admin id">
                    </div>

                    <div class="form" style="margin-left: 185px;">
                        <input type="submit" value="submit now">
                    </div>

                </div>
            </form>
        </div>
        <div id="doctor">
            <img src="../assets/img/Dashboard/doctor.png" alt="doctor.com" height="500px" width="500px">
        </div>
    </div>



</body>

</html>