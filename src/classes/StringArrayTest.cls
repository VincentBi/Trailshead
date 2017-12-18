public class StringArrayTest {

    public static List<String> generateStringArray(integer n){
        List<String> colors = new List<String>();
        for(integer i = 0; i< n; i++){
            String str = 'Test '+ i;
            colors.add(str);
        }
        
        return colors;
    }
}