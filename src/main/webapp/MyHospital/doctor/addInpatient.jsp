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
        .navbar {
                width: 100%;
                position: fixed;
                display: flex;
                flex-wrap: wrap;
                align-items: center;
                justify-content: space-between;
                padding: 0.5rem 1 rem;
                overflow: hidden;
            }

            body {
                    font-family: "Lato", sans-serif;
                    overflow-x: hidden;
                    background-image: url("<%=request.getContextPath()%>/MyHospital/assets/img/hero-bg.jpg");
                    background-repeat: no-repeat;
                    background-position: right top;
                    background-attachment: fixed;
                    font-family: "Lato", sans-serif;

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

    </style>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../assets/css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script>
			function callDashboard(){
				   var email =  localStorage.getItem('email');
			    location.href = "/HMS/doctorDashboard?email="+email+"&&userType=Doctor" //2
			}
		
			
			 window.onload = function(){
			 	
			 //get data from storage
			 	if(!localStorage.getItem('name')){
			 	    $window.localStorage.setItem('name', JSON.stringify(adminName));
			 	}
			 console.log(localStorage);
			 if (doctorName !== null) { //if data exist (todos are in storage)
			     
			     document.getElementById('doctorName').innerHTML = localStorage.getItem('name'); //2
			     document.getElementById('dept').innerHTML = localStorage.getItem('dept'); //2
			
			     
			 } else { //if nothing exist in storage, keep todos array empty
			     name = "Admin";
		}
	 }
	
	 </script>
</head>

<body style="background-color: #dfdfdf9c;">

     <nav class="navbar navbar-light bg-white fixed-top" id="navbar">

            <h1 class="logo me-auto" style="margin-left:0px;"> <img src="<%=request.getContextPath()%>/MyHospital/assets/img/Dashboard/logo.png"
                    alt="hospital.com" height="50px" width="50px"> <a class="navbar-brand" href="#">Medilab</h1>
            <form class="form-inline">
                <button  onClick="location.href='/HMS/MyHospital/'" class="btn btn-outline-success" type="button">Log Out</button>
            </form>
        </nav>
   
	 <div class="sidebar">
        <div class="row" style="width: 500px; height: 100px;">
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;"
                style="margin:20px; padding: 5px;">
                <img src="${pageContext.request.contextPath}/MyHospital/assets/img/admin_logo1.png"
                    style="border-radius: 50%; padding: 0%; margin: 0px; background-color: #ffffff;" width="60px"
                    height="60px" alt="Avatar" class="avatar">
            </div>
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 1px; margin-bottom: 20px;">

                <div class="row" style="margin-top: 10px; margin-left: 2px;">
                    <h5 style="color: white;"><b><span id="doctorName" >Doctor</span></b></h5>
                </div>
                <div class="row" style="margin-top: 10px; margin-left: 2px;">
                    <h5 style="color: white;"><b><span id="dept">Dept</span></b></h5>
                </div>

            </div>
        </div>
        
			<a href="javascript:callDashboard()"><i class="fa fa-fw fa-home"></i> Dashboard</a>
            <a href="/HMS/doctorProfile"><i class="fa fa-fw fa-wrench"></i> Profile</a>
            <a href="/HMS/MyHospital/doctor/addInpatient.jsp"><i class="fa fa-fw fa-user"></i> Add Inpatients </a>
            <a href="/HMS/MyHospital/doctor/addOutpatient.jsp"><i class="fa fa-fw fa-user"></i> Add Outpatients </a>
            <a href="/HMS/viewInpatient?location=Doctor"><i class="fa fa-fw fa-user"></i> Inpatients Book </a>
            <a href="/HMS/viewOutpatient?location=Doctor"><i class="fa fa-fw fa-user"></i> Outpatients Book </a>  
                 
    </div>
    
    <div id="content">
        <div id="h2">Add Inpatient</div>
        <div id="box">
            <img style="margin-left: 50px; margin-top: 10px;" src="../assets/img/Dashboard/bg.jpg" height="500px"
                width="680px">
            <form name="addDoctor" action="/HMS/addInpatient" onsubmit="return validateForm()" method="GET">
                <div class="text-block ">
                    <div class="form ">
                        <label for="name "><b>Patient's Name:</b></label>
                        <input type="text " name="name" id="name" placeholder="Enter Name " pattern="[A-Za-z]" title="Enter the valid name">
                    </div>
                    <div class="form">
                        <label for="id"><b>Patient's id:</b></label>
                        <input type="number" name="id" id="id" min="1" placeholder="Enter id">
                    </div>
                    <div class="form ">
                        <label for="address "><b>Address:</b></label>
                        <input type="text " name="address" id="address " placeholder="Enter address ">
                    </div>
                    <div class="form ">
                        <label for="phone "><b>Mobile no.:</b></label>
                        <input type="phone" name="phone" id="phone" placeholder="Enter Mobile number ">
                    </div>
                    <div class="form ">
                        <label for="disease"><b>Disease Name:</b></label>
                        <input type="text " name="disease" id="disease" placeholder="Enter name of disease " pattern="[A-Za-z]" ">
                    </div>
                    <div class="form" style="margin-top: 0px;">
                        <label for="gender"><b>Gender:</b></label>
                        <b>Male&ensp;</b><input type="radio" name="gender" id="male" value="Male">
                        <b>Female&ensp;</b><input type="radio" name="gender" id="female" value="Female">
                        <!-- <b>Other&ensp;</b><input type="radio" name="name" id="name"> -->
                    </div>
                    <div class="form">
                        <label for="lab_no"><b>lab no:</b></label>
                        <input type="number" name="lab_no" id="lab_no" min="1" placeholder="Enter lab no.">
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