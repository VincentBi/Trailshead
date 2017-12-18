public class NewCaseListController {
    
    public List<Case> getNewCases(){
        List<case> cases = Database.query('select id, casenumber from case where status=\'New\'');
        
        return cases;
    }

}