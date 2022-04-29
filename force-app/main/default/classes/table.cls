public class table {
    public static void myTable(){
        List<integer> mytable = new List<integer>{2,4,6,8,10,12};
            List<integer>mytable1 = new List<integer>{3,6,9,12,15,18};
                List<integer> mytable2 = new List<integer>{4,8,12,16,20};
                    List<integer> mytable3 = new List<integer>{5,10,15,20,25};
                    Map<integer,List<integer>> updatetable = new Map<integer,List<integer>>();
        updatetable.put(2,mytable);
        updatetable.put(3,mytable1);
        updatetable.put(4,mytable2);
        updatetable.put(5,mytable3);
        system.debug(updatetable);
            
}

}