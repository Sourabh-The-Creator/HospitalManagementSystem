<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {
            font-family: "Lato", sans-serif;
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
    </style>

   

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MyHospital/assets/css/sidebar.css">
       <script>
       doctorName = '${name}'
       doctorEmail = '${email}'
       doctor_id = '${doctor_id}'
       dept = '${dept}'
       ip = '${Incount}'
       op = '${Outcount}'

      
            window.onload = function(){
        
            //get data from storage
                	localStorage.clear();
                    localStorage.setItem('name', doctorName);
                    localStorage.setItem('email', doctorEmail);
                    localStorage.setItem('doctor_id', doctor_id);
                    localStorage.setItem('dept', dept);
                    localStorage.setItem('inpatients',ip );
                    localStorage.setItem('outpatients',op);
                
            console.log(localStorage);
            if (doctorName !== null) { //if data exist (todos are in storage)
                
                document.getElementById('doctorName').innerHTML = localStorage.getItem('name'); //2
               document.getElementById('dept').innerHTML = localStorage.getItem('dept');
                document.getElementById('ip').innerHTML = localStorage.getItem('inpatients');
                document.getElementById('op').innerHTML = localStorage.getItem('outpatients');
               // document.getElementById('adminName').innerHTML = localStorage.getItem('name');
        
                
            } else { //if nothing exist in storage, keep todos array empty
                localStorage.setItem('name', doctorName);
                localStorage.setItem('email', doctorEmail);
        
            }
        }

       function callDashboard(){
    	   var email =  localStorage.getItem('email');
           location.href = "/HMS/doctorDashboard?email="+email+"&&userType=Doctor" //2
       }
       

        </script>
</head>

<body style="background-color: #f7f7f7ce;background-image: url('<%=request.getContextPath()%>/MyHospital/assets/img/hero-bg.jpg')" >

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

    <div class="main">

        <div class="container" style="align-items: initial; width: 1000px;">
            <div class="row" style="margin-right: 80px;">
                 <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">

                    <div class="card" style="width: 15rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Inpatients</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b><span id = "ip">0</span></b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="/HMS/viewInpatient?location=Doctor" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">
                    <div class="card" style="width: 15rem;height: 12rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Outpatients</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b><span id = "op">0</span></b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="/HMS/viewOutpatient?location=Doctor" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>