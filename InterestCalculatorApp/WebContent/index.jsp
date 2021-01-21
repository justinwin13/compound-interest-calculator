<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Interest Calculator</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        * {
            margin: 0px;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Poppins", sans-serif;
        	background-color: #22222f;
        }

        button {
            font-family: "Poppins", sans-serif;
        }

        h1 {
        	color: black;
        	font-size: 20px;
          	text-align: center;
        	margin-bottom: 15px;
       		margin-top: -15px;
        	padding-bottom: 6px;
        	border-bottom: 1px solid lightgrey;
        }

        .main {
        	width: 500px;
            display: flex;
            flex-direction: column;
            background-color: #eaeaea;
        	padding: 20px;
        	border-radius: 15px;
            justify-content: space-around;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

		.main button {
        	width: 150px;
        	margin-top: 20px;
        	margin-left: 300px;
        	margin-bottom: 20px;
      	}
      	
      	.main div {
        	margin-bottom: 10px;
        	display:flex;
        	justify-content: space-between;
      	}
      	.button-container {
        	flex-direction: row;
      	}
      	
      	.result{
        	color: #44ab83;
      	}
      	.error {
        	color: red;
      	}
    </style>
</head>

<body>

    <div class="main">
        <h1>Compound Interest Calculator</h1>
        <form class="form" action="/" method="post">
            <div>
                <label for="principal-amount">Principal Amount:</label>
                <input id="principal-amount" type="number" name="principalAmt" value="${principalAmt}">
            </div>

            <div>
                <label for="interest-rate">Interest Percentage:</label>
                <input id="interest-rate" type="number" min="1" name="interest" value="${interest}">
            </div>

            <div>
                <label for="years"># of years:</label>
                <input id="years" type="number" min="1" name="yrs" value="${yrs}">
            </div>

            <div>
                <label for="compounding-period">Times per year:</label>
                <input id="compounding-period" type="number" min="1" name="compoundPeriod" value="${compoundPeriod}">
            </div>
          	<div class="button-container">
  				<button type="submit">Calculate</button>
          	</div>
    

          	<p class="result">Result: ${result}</p>
          
            <p class="error">${error}</p>
        </form>
    </div>

</body>

</html>