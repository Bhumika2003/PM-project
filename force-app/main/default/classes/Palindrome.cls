public class Palindrome {
    public static void palndrm(){
        String txt = 'Madam';
        String rev = txt.reverse();
        if(txt == rev){
            system.debug('Palindrome');
        }
        else{
            system.debug('Not Palindrome');
        }
    }
}