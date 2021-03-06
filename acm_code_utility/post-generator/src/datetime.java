import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Class to format and validate dates and time
 * @author Jake Humphrey
 * <br />MSUM ACM Organization Web Miester 
 * <br />msumacm.org
 * @version 1.0.0
 */
public class datetime {
	final static String DATE_FORMAT = "yyyy-MM-dd";
	private String date;
	private String time;
	private Pattern pattern;
	private Matcher matcher;
	private static final String TIME24HOURS_PATTERN = "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]";
	
	datetime(String Date, String Time)
	{
		pattern = Pattern.compile(TIME24HOURS_PATTERN);
		this.setDate(Date);
		this.setTime(Time);
	}
	datetime()
	{
		pattern = Pattern.compile(TIME24HOURS_PATTERN);
		this.setDate("2013-01-01");
		this.setTime("00:00:00");
	}
	
	/**
	 * Checks if the date is valid and sets the date
	 * @param Date
	 */
	public void setDate(String Date)
	{
		try {
            DateFormat df = new SimpleDateFormat(DATE_FORMAT);
            df.setLenient(false);
            df.parse(Date);
            this.date = Date;
        } catch (ParseException e) {
            System.out.println("ERROR: Invalid date. Resetting date to 1/1/2013");
            this.date = "2013-01-01";
        }
	}
	
	/**
	  * Validate time in 24 hours format with regular expression
	  * @param Time time address for validation
	  * @return boolean 
	  */
	public boolean validateTime(final String Time){

		matcher = pattern.matcher(Time);
		return matcher.matches();
	}
	
	/**
	 * Checks if the time is valid an sets the time
	 * @param Time
	 */
	public void setTime(String Time)
	{
		if(validateTime(Time))
		{
			this.time = Time;
		}else{
			System.out.println(Time);
			System.out.println("ERROR: Invalid time. Resetting time to 00:00:00");
			this.time = "00:00:00";
		}
	}
	
	/**
	 * Returns the valid date as a string
	 * @return String date
	 */
	public String getDate()
	{
		return this.date;
	}
	/**
	 * Returns the valid time as a string
	 * @return String time
	 */
	public String getTime()
	{
		return this.time;
	}
	/**
	 * Returns the combined date time as a string in 
	 * the following format 'yyyy-mm-dd hh:mm:ss'
	 * @return String datetime
	 */
	public String getDateTime()
	{
		return this.date + " " + this.time;
	}
}

	 