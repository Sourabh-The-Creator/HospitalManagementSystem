<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {
            font-family: "Lato", sans-serif;
        }
    </style>



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="../MyHospital/assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/MyHospital/assets/css/sidebar.css">
</head>

<body style="background-color: #f7f7f7ce;">

    <nav class="navbar navbar-light bg-white">
        <h1 class="logo me-auto"> <a class="navbar-brand" href="#">Medilab</h1>
        <form class="form-inline">
            <button class="btn btn-outline-success" type="button"><a href="/HMS/MyHospital/forms/signIn.html">Log Out</a></button>
            </form>
    </nav>

    <div class="sidebar">
        <div class="row" style="width: 500px; height: 100px;">
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;" style="margin:20px; padding: 5px;">
                <img src="${pageContext.request.contextPath}/MyHospital/assets/img/admin_logo1.png" style="border-radius: 50%; padding: 0%; margin: 0px; background-color: #ffffff;" width="60px" height="60px" alt="Avatar" class="avatar">
            </div>
            <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 1px; margin-bottom: 20px;">

                <div class="row" style="margin-top: 25px; margin-left: auto;">
                    <h4 style="color: rgb(255, 255, 255);"><b> ${name}</b></h4>
                </div>

            </div>
        </div>
        <a href="../screens/adminDashboard.html"><i class="fa fa-fw fa-home"></i> Dashboard</a>
        <a href="#services"><i class="fa fa-fw fa-wrench"></i> Profile</a>
        <a href="#clients"><i class="fa fa-fw fa-user"></i> Inpatients</a>
        <a href="#clients"><i class="fa fa-fw fa-user"></i> Outpatients</a>
        <a href="../screens/addDoctor.html"><i class="fa fa-fw fa-envelope"></i> Add Doctors</a>
    </div>

    <div class="main">

        <div class="container" style="align-items: initial; width: 1000px;">

            <div class="row" style="margin-right: 100px;">
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">
                    <div class="card" style="width: 15rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Doctors</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b>1</b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="#" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">

                    <div class="card" style="width: 15rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Staff Members</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b>1</b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="#" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">

                    <div class="card" style="width: 15rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Inpatients</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b>1</b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="#" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row" style="margin-right: 80px;">
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;">
                    <div class="card" style="width: 15rem;height: 12rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Outpatients</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b>1</b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="#" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>
                <div class="column" style="margin-right: 10px; margin-left: 10px;margin-top: 10px; margin-bottom: 5px;" style="margin-left: 0px; margin-right: 400px;">

                    <div class="card" style="width: 15rem;height: 12rem;">

                        <div class="card-body" style="text-align: center;">
                            <h5 style="color: #4b6ed8;" class="card-title"><b>Doctors</b></h5>
                        </div>
                        <div style="text-align: center;">
                            <h1 style="color: red;"><b>1</b></h1>
                        </div>

                        <div class="card-body" style="text-align: center;">

                            <a href="#" class="card-link">View &#x2192</a>
                        </div>
                    </div>
                </div>


            </div>

        </div>

    </div>
</body>

</html>