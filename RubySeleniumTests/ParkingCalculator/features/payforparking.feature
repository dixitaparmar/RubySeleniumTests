Feature: Pay for parking

Scenario Outline : Short term parking
    Given that I am on "http://adam.goucher.ca/parkcalc/"
    And I have chosen to park <term>
    And I have chosen the <entry_date>
    And I have chosen the <entry_time>
    And I have chosen the <exit_date>
    And I have chosen the <exit_time>
    When I add calculate
    Then <cost> will display
        
Examples :
	
	|term|entry_date|entry_time|exit_date|exit_time|cost|
	|Short-Term Parking|1:00 pm|01/16/2015|01/16/2015|2:00 pm|$ 2.00 (0 Days, 1 Hours, 0 Minutes)|
	|Short-Term Parking|6:30 pm|01/16/2015|01/16/2015|9:30 pm|$ 6.00 (0 Days, 3 Hours, 0 Minutes)|
	|Short-Term Parking|8:30 pm|01/16/2015|01/17/2015|1:30 am|$ 10.00 (0 Days, 5 Hours, 0 Minutes)|
	|Short-Term Parking|8:45 am|01/16/2015|01/16/2015|9:15 am|$ 2.00 (0 Days, 0 Hours, 30 Minutes)|
	|Short-Term Parking|9:45 am|01/16/2015|01/30/2015|10:25 am|$ 672.00 (0 Days, 0 Hours, 30 Minutes)|