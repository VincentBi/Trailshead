public class myController {
	public string myString;
    
    public string getMyString(){
        return 'getMyString';
    }
    
    public string getStringMethod1(){
        return myString;
    }
    
    public string getStringMethod2(){
        if(myString == null){
            myString = 'Method2';
        }
        return myString;
    }
}