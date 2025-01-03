<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Batch Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet" 
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
          crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f7f8fa;
            color: #333;
        }

        .container {
            margin: 50px auto;
            max-width: 700px;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            background: #ffffff;
        }

        .card-header {
            background: #007bff;
            color: white;
            font-weight: bold;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            padding: 10px 20px;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .form-outline {
            margin-bottom: 15px;
        }

        .form-outline label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        button {
            background: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Batch Details
            </div>
            <div class="card-body">
                <h6 class="text-primary mb-3">
                    <u>Details of the Batch:</u>
                </h6>
                <div class="border rounded p-3 mb-4">
                    <table class="table table-hover">
                        <tbody>
                            <tr class="table-primary">
                                <th>Student ID</th>
                                <td>${st.studentId}</td>
                            </tr>
                            <tr class="table-primary">
                                <th>Student Name</th>
                                <td>${st.studentFullName}</td>
                            </tr>
                            <tr class="table-primary">
                                <th>Course Name</th>
                                <td>${st.studentCourse}</td>
                            </tr>
                            <tr class="table-primary">
                                <th>Batch Number</th>
                                <td>${st.batchNumber}</td>
                            </tr>
                            <tr class="table-danger">
                                <th>Fees Paid</th>
                                <td>${st.feesPaid}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <form action="updatebatch">
                    <input type="hidden" name="studentid" value="${st.studentId}">
                    <div class="form-outline">
                        <label for="batchMode">Batch Mode</label>
                        <select name="batchMode" class="form-select">
                            <option value="#" disabled selected>Select Batch Mode</option>
                            <option value="Online">Online</option>
                            <option value="Offline">Offline</option>
                        </select>
                    </div>
                    <div class="form-outline">
                        <label for="batchNumber">Batch Number</label>
                        <select name="batchNumber" class="form-select">
                            <option value="#" disabled selected>Select Batch Number</option>
                            <option value="FDJ-160">FDJ-160</option>
                            <option value="REG-160">REG-160</option>
                            <option value="FDJ-185">FDJ-185</option>
                            <option value="REG-185">REG-185</option>
                        </select>
                    </div>
                    <div class="d-flex justify-content-center pt-4">
                        <button type="submit">Update Batch</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
