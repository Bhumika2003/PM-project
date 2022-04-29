public class duplicate {
    public static void check(){
       List<Integer> ls = new List<Integer>{1,2,3,5,1,2,5,9};
           Set<Integer> s = new Set<Integer>(ls);
               if(ls.size()==s.size()){
                   system.debug('Not Duplicate');
               }
        else{
            system.debug('Duplicate');
        }
    
    }
}