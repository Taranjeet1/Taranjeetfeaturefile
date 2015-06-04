package nopcommerce;

import cucumber.junit.Cucumber;
import org.junit.runner.RunWith;
/**
 * Created by Asus on 02/06/2015.
 */
@RunWith(Cucumber.class)
@Cucumber.Options(format = {"html:target/CucumberReports"},tags="@categoriesList")

public class RunTests {
}
