
public class Utils {

	public static double calculateCompoundInterest (double principal, double interest, int years, int compoundPeriod) {
		
		double ans = Math.round(principal * Math.pow(1 + (interest/compoundPeriod), years * compoundPeriod));
		return ans;
	}
}
