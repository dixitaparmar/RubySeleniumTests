Feature: As a Consumer, I want to pay for parking

Scenario Outline: View short term parking costs

Given I am on "http://adam.goucher.ca/parkcalc/" page
And I have selected lot "<lot>"
And I have entered entry time "<entry_time>"
And I have selected entry AMPM "<entry_AMPM>"
And I have entered entry date"<entry_date>"
And I have entered exit time "<exit_time>"
And I have selected exit AMPM  "<exit_AMPM>"
And I have entered exit date "<exit_date>"
When I choose to view the parking cost
Then I should see cost "<cost>" adn "duration" in results

Examples:
|lot|entry_time|entry_AMPM|entry_date|exit_time|exit_AMPM|exit_date|cost|duration|
|Short-Term Parking|1:00|PM|01/16/2015|2:00|PM|01/16/2015|$ 2.00 |(0 Days, 1 Hours, 0 Minutes)|
|Short-Term Parking|6:30|PM|01/16/2015|9:30|PM|01/16/2015|$ 6.00| (0 Days, 3 Hours, 0 Minutes)|
#|Short-Term Parking|8:30|PM|01/16/2015|1:30|AM|01/17/2015|$ 10.00| (0 Days, 5 Hours, 0 Minutes)|
#|Short-Term Parking|8:45|AM|01/16/2015|9:15|AM|01/16/2015|$ 2.00| (0 Days, 0 Hours, 30 Minutes)|
#|Short-Term Parking|9:45|AM|01/16/2015|10:25|AM|01/30/2015|$ 672.00| (0 Days, 0 Hours, 30 Minutes)|