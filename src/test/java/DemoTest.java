import static org.junit.Assert.*;
import org.junit.Test;
public class DemoTest {
@Test
public void simpleTest()
{
	int a=1;
	int b=2;
	assertTrue( a + b == 3);
}
@Test
public void simpleTest1()
{
	int a=1;
	int b=1;
	assertTrue( a + b == 2);
}
}
