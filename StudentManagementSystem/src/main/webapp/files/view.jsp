<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Enrollment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f9f9f9 url("images/komarov-egor-sevuhbBmZtQ-unsplash.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }
        nav {
            background: #ffffffcc;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        nav a button {
            margin: 5px;
            background: #007bff;
            border: none;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        nav a button:hover {
            background: #0056b3;
        }
        h1 {
            color: #fff;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
        }
        .table {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
        }
        .table thead {
            background: #007bff;
            color: #fff;
        }
        .btn-group .btn {
            margin: 2px;
        }
        marquee h1 {
            color: red;
            font-size: 20px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        .pagination .page-link {
            color: #007bff;
        }
        .pagination .page-link:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
    <script type="text/javascript">
        function fees() {
            document.fn.action = "/fees";
            document.fn.submit();
        }
        function batch() {
            document.fn.action = "/batch";
            document.fn.submit();
        }
        function remove() {
            document.fn.action = "/remove";
            document.fn.submit();
        }
    </script>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Student Enrollment</a>
            <div class="d-flex">
                <a href="enroll_student"><button>Home</button></a>
                <!-- <a href="#"><button>Students</button></a>
                <a href="#"><button>Fees</button></a>
                <a href="#"><button>Settings</button></a> -->
            </div>
        </div>
    </nav>

    <!-- Page Title -->
    <h1 class="text-center my-4">Student Details</h1>

    <div class="text-center">
        <form action="search" class="d-inline-flex align-items-center">
            <select class="form-select form-select-sm me-2 w-auto" name="batchNumber">
                <option value="#" selected>Select Batch Number</option>
                <option value="FDJ-160">FDJ-160</option>
                <option value="REG-160">REG-160</option>
                <option value="FDJ-161">FDJ-161</option>
                <option value="REG-161">REG-161</option>
                <option value="FDJ-185">FDJ-185</option>
            </select>
            <button class="btn btn-primary btn-sm">Search</button>
        </form>
        <marquee>
            <h1>${message}</h1>
        </marquee>
    </div>

    <!-- Student Table -->
    <form name="fn">
        <table class="table table-hover table-bordered mx-auto mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Student Name</th>
                    <th>Student Email</th>
                    <th>Age</th>
                    <th>College Name</th>
                    <th>Course Name</th>
                    <th>Batch No</th>
                    <th>Mode</th>
                    <th>Fees Received</th>
                    <th>Select</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${data}" var="s">
                    <tr>
                        <td>${s.studentId}</td>
                        <td>${s.studentFullName}</td>
                        <td>${s.studentEmail}</td>
                        <td>${s.studentAge}</td>
                        <td>${s.studentCollegeName}</td>
                        <td>${s.studentCourse}</td>
                        <td>${s.batchNumber}</td>
                        <td>${s.batchMode}</td>
                        <td>${s.feesPaid}</td>
                        <td><input type="radio" name="id" value="${s.studentId}"></td>
                        <td>
                            <div class="btn-group btn-group-sm">
                                <button class="btn btn-outline-success" onClick="fees()">Pay Fees</button>
                                <button class="btn btn-outline-primary" onClick="batch()">Shift Batch</button>
                                <button class="btn btn-outline-danger" onClick="remove()">Remove</button>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>

    <!-- Pagination -->
    
   
        <ul class="pagination justify-content-center mt-3">
            <li class="page-item"><a class="page-link" href="paging?pageNo=0">1</a></li>
            <li class="page-item"><a class="page-link" href="paging?pageNo=1">2</a></li>
            <li class="page-item"><a class="page-link" href="paging?pageNo=2">3</a></li>
        </ul>
    
    
</body>
</html>
