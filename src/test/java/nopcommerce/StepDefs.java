package nopcommerce;
import cucumber.annotation.Before;
import cucumber.annotation.After;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import java.util.concurrent.TimeUnit;

/**
 * Created by Asus on 02/06/2015.
 */

public class StepDefs {

    WebDriver driver;
   // String url=("http://demo.nopcommerce.com/");
/*@Before
public void startBrowser(){
    driver = new FirefoxDriver();
    driver.get("http://demo.nopcommerce.com");
    driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    driver.manage().window().maximize();
    }
*/
    @Before
    public void openBrowser(){
        driver=new FirefoxDriver();
        driver.get("http://demo.nopcommerce.com/");
        driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
    }

    @After
    public void stopBrowser(){

        driver.quit();

                }
}