<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Enrollment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #baacac;
            background-image:url("images/komarov-egor-sevuhbBmZtQ-unsplash.jpg");
            color: #333;
        }

        .card {
            margin-top: 20px;
            background: #C2DFFF;
            border-radius: 25px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
        }

        nav {
            background: #82CAFF;
            border-radius: 25px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        nav img {
            height: 50px;
        }

        nav a button {
            background: #007bff;
            border: none;
            color: white;
            padding: 8px 12px;
            margin: 0 5px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        nav a button:hover {
            background: #0056b3;
        }

        h3 {
            text-align: center;
            margin: 20px 0;
            color: #444;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }

        form .form-outline input,
        form select {
            border: 1px solid rgba(0, 0, 0, 0.2);
            padding: 10px;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 15px;
        }

        form button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            transition: background 0.3s;
        }

        form button:hover {
            background: #0056b3;
        }

        .view {
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <nav class="d-flex justify-content-between align-items-center p-3">
                <img src="images/cjclogo.jpeg.jpg" alt="CJC Logo">
                <div>
                    <a href="#enroll"><button>Enroll Student</button></a>
                    <a href="viewpage"><button>View Student</button></a>
                    <a href="/"><button>Logout</button></a>
                </div>
            </nav>
            <section id="enroll" class="p-4">
                <h3>Student Enrollment Form</h3>
                <form action="enroll_student" method="POST">
                    <div class="form-outline">
                    <label for="studentFullName">Student Full Name</label>
                        <input type="text" name="studentFullName" placeholder="Full Name" class="form-control">
                        
                    </div>
                    <div class="form-outline">
                     <label for="studentEmail">Student Email</label>
                        <input type="email" name="studentEmail" placeholder="Email" class="form-control">
                    </div>
                    <div class="form-outline">
                     <label for="StudentAge">Student Age</label>
                        <input type="number" name="studentAge" placeholder="Age" class="form-control">
                       
                    </div>
                    <div class="form-outline">
                    <label for="studentCollageName">Student College Name</label>
                        <input type="text" name="studentCollageName" placeholder="College Name" class="form-control">
                        
                    </div>
                    <div class="form-outline">
                    <label for="feesPaid">Fees Paid</label>
                        <input type="number" name="feesPaid" placeholder="Fees Paid" class="form-control">
                        
                    </div>
                    <div>
                        <label>Student Course:</label>
                        <div class="d-flex">
                            <input type="radio" name="studentCourse" id="java" value="Java" checked>
                            <label for="java">Java</label>
                            <input type="radio" name="studentCourse" id="python" value="Python">
                            <label for="python">Python</label>
                            <input type="radio" name="studentCourse" id="testing" value="Testing">
                            <label for="testing">Testing</label>
                        </div>
                    </div>
                    <div class="form-outline">
                    <label for="batchMode">Batch Mode</label>
                        <select name="batchMode" class="form-select">
                            <option value="#" disabled>Select Batch Mode</option>
                            <option value="Online">Online</option>
                            <option value="Offline">Offline</option>
                        </select>
                        
                    </div>
                    <div class="form-outline">
                    <label for="batchNumber">Batch Number</label>
                        <select name="batchNumber" class="form-select">
                            <option value="#" disabled>Select Batch Number</option>
                            <option value="FDJ-160">FDJ-160</option>
                            <option value="REG-160">REG-160</option>
                            <option value="FDJ-185">FDJ-185</option>
                            <option value="REG-185">REG-185</option>
                        </select>
                        
                    </div>
                    <button type="submit">Submit</button>
                </form>
            </section>
        </div>
    </div>
</body>
</html>
