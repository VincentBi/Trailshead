public class BusScheduleCache {
	
    private Cache.OrgPartition part;
    
    public BusScheduleCache() {
        Cache.OrgPartition busSchedule = Cache.Org.getPartition('local.BusSchedule');
        part = busSchedule;
    }
    
    public void putSchedule(String busLine, Time[] schedule){
		part.put(busLine, schedule);
    }
    
    public Time[] getSchedule(String busLine){
        List<Time> schedule = new List<Time>();
        
        Time[] timeArr = (Time[])part.get(busLine);
        System.debug('getSchedule time line: '+ timeArr);
        if(timeArr != null){
            System.debug('Schedule time line is null: ');
            schedule.add(Time.newInstance(8,0,0,0));
            schedule.add(Time.newInstance(17,0,0,0));
            part.put(busLine, schedule);
        } 
        System.debug('Schedule time line: '+ schedule);
        return schedule;
        /* Time[] schedule;
         // Get a cached value
         Object obj = Cache.Org.get(busLine);
         // Cast return value to a specific data type
         Time t2 = (Time)obj;
         if (t2 != null) {
             schedule.add(t2);
         }
         else {
             Time t3 = Time.newInstance(8,0,0,0);
             schedule.add(t3);
             Time t4 = Time.newInstance(17,0,0,0);
             schedule.add(t4);
         }       
        
         return schedule;*/
    }
}