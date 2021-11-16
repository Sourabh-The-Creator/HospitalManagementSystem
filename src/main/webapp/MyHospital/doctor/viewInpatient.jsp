<%@page language="java" import="java.util.*" %>
    <!DOCTYPE html>
    <html>


    <head>
        <title>StaffBook</title>
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
        /* <img style="margin-left: 0px;opacity: 0.5; margin-top: 80px;" src="" width="100%"> */
                    background-image: url("<%=request.getContextPath()%>/MyHospital/assets/img/hero-bg.jpg");
                    background-repeat: no-repeat;
                    background-position: right top;
                    background-attachment: fixed;

            }

            .sidebar {
                height: 100%;
                width: 220px;
                position: absolute;
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

            .table-box {
                width: 50%;
                align-content: center;
                margin-left: 700px;
                position: absolute;
                top: 65%;
                transform: translate(-50%, -50%);
            }

            .table-row {
                display: table;
                width: 150%;
                margin: 10px auto;
                font-family: sans-serif;
                background: transparent;
                
                padding: 12px 0;
                color: #000;
                font-size: 14px;
                box-shadow: 0 1px 4px 0 rgba(0, 0, 50, 0.3);
            }

            .table-cell {
                display: table-cell;
                width: 10%;
                text-align: center;
                padding: 4px 0;
                border-right: 1px solid #d6d4d4;
                vertical-align: middle;
            }

            .table-head {
                background: Transparent;
                box-shadow: 0 1px 4px 0 rgba(0, 0, 50, 0.3);
                color: #000;
                font-weight: 600;
                font-size: 15px;
            }

            .last-cell {
                border-right: none;
            }

          
        </style>
  <script>
     
    	   function callDashboard(){
    	   var email =  localStorage.getItem('email');
           location.href = "/HMS/doctorDashboard?email="+email+"&&userType=Doctor" //2
       }
        window.onload = function(){
        	
        //get data from storage
        	if(!localStorage.getItem('name')){
        	    $window.localStorage.setItem('name', JSON.stringify(doctorName));
        	}
        console.log(localStorage);
        if (doctorName !== null) { //if data exist (todos are in storage)
            
            document.getElementById('doctorName').innerHTML = localStorage.getItem('name'); //2
            document.getElementById('dept').innerHTML = localStorage.getItem('dept'); //2
     
            
        } else { //if nothing exist in storage, keep todos array empty
            name = "Doctor";
        }
        }

        </script>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/MyHospital/assets/css/sidebar.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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


        <div class="table-box">
            <div class="table-row table-head">
                <div class="table-cell">
                    <p>Patient ID</p>
                </div>
                <div class="table-cell">
                    <p>Patient Name</p>
                </div>
                <div class="table-cell">
                    <p>Address</p>
                </div>
                <div class="table-cell">
                    <p>Gender</p>
                </div>
                <div class="table-cell">
                    <p>Disease</p>
                </div>
                <div class="table-cell">
                    <p>Phone</p>
                </div>
                <div class="table-cell">
                    <p>Doctor ID</p>
                </div>
                <div class="table-cell last-cell">
                    <p>Lab No</p>
                </div>
            </div>
            <%Iterator itr;%>
                    <% List data=(List)request.getAttribute("inpatientList"); for (itr=data.iterator(); itr.hasNext(); ) {
                        %>
            <div class="table-row">
                <div class="table-cell">
                    <%=itr.next()%>
                </div>
                <div class="table-cell">
                     <%=itr.next()%>
                </div>
                <div class="table-cell">
                    <%=itr.next()%>
                </div>
                <div class="table-cell">
                    <%=itr.next()%>
                </div>
                <div class="table-cell">
                     <%=itr.next()%>
                </div>
                <div class="table-cell">
                    <%=itr.next()%>
                </div>
                <div class="table-cell">
                    <%=itr.next()%>
                </div>
                <div class="table-cell last-cell">
                     <%=itr.next()%>
                </div>
            </div>
            <%}%>
        </div>

    </body>

  </html>
