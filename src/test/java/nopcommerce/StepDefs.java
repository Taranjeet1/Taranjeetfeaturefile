package nopcommerce;
import cucumber.annotation.Before;
import cucumber.annotation.After;
import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import cucumber.runtime.PendingException;
import cucumber.table.DataTable;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.net.MalformedURLException;
import java.util.concurrent.TimeUnit;

/**
 * Created by Asus on 02/06/2015.
 */

public class StepDefs {

    static  WebDriver driver;
    @Before
    public void openBrowser(){
        driver=new FirefoxDriver();
        driver.get("http://demo.nopcommerce.com");
    }
    @Given("^User is on the Home page$")
    public void User_is_on_the_Home_page() {
        // Express the Regexp above with the code you wish you had
        throw new PendingException();
    }

    @Then("^User should see Categories on  the left panel of the  Home page$")
    public void User_should_see_Categories_on_the_left_panel_of_the_Home_page() {
        // Express the Regexp above with the code you wish you had
        throw new PendingException();
    }

    @Then("^User should be able to Navigate to those Categories page$")
    public void User_should_be_able_to_Navigate_to_those_Categories_page(DataTable arg1) {
        // Express the Regexp above with the code you wish you had
        // For automatic conversion, change DataTable to List<YourType>
        throw new PendingException();
    }

}