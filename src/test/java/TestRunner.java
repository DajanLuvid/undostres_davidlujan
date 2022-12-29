import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class TestRunner {

    @Test
    void testParallel(){
        Runner.path("src/test/java").tags("~@ignore").parallel(2);
    }
}
