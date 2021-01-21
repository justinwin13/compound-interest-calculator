

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorServlet
 */
@WebServlet (name= "CalculatorServlet", urlPatterns = {"","/"})
public class CalculatorServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String principalAmount = request.getParameter("principalAmt");
		String interestRate = request.getParameter("interest");
		String years = request.getParameter("yrs");
		String compoundingPeriod = request.getParameter("compoundPeriod");
		
		String error;
		
		if(principalAmount == null || interestRate == null || years == null || compoundingPeriod == null || principalAmount == "" || interestRate == "" || years == "" || compoundingPeriod == "") {
			error = "One or more of the input fields are blank. Try again.";
			request.setAttribute("error", error);
		}
		else {
			double result = Utils.calculateCompoundInterest(Double.parseDouble(principalAmount), (Double.parseDouble(interestRate)/100), Integer.parseInt(years), Integer.parseInt(compoundingPeriod));
			request.setAttribute("result", result);
		}
		
		request.setAttribute("principalAmt", principalAmount);
		request.setAttribute("interest", interestRate);
		request.setAttribute("yrs", years);
		request.setAttribute("compoundPeriod", compoundingPeriod);
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
