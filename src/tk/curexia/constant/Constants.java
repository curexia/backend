package tk.curexia.constant;

import java.util.ArrayList;

public class Constants {
    private static ArrayList<String> doctorUris;
    private static ArrayList<String> patientUris;
    private final static String USER_AGENT = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";

    static void initUris(){
        doctorUris = new ArrayList<>();
        doctorUris.add("/user/doctor");

        patientUris = new ArrayList<>();
        patientUris.add("/user/patient");
    }

    public static boolean checkUri(String uri, String position){
        initUris();
        switch (position){
            case "doctor":{
                if(doctorUris.contains(uri)){
                    return true;
                }else{
                    return false;
                }
            }
            default:{
                if(patientUris.contains(uri)){
                    return true;
                }else{
                    return false;
                }
            }
        }
    }
    
    public static String AppName(){
        return "Curexia!";
    }

    public static String healthOSID(){
        return "b3765edad9e72491f0ec466d1244f906b3f11a147f550f58fc28ad500eddcb44";
    }
    public static String healthOSSecret(){
        return "d30ed9dd05e9130d37e477c0ba234efe6a6e65dcf8deda57fa037a50e3c9f083";
    }
    public static String healthOSAccessToken(){ return "1b53411411cc1ab9de8325cd63a67fe23259747b09fa47eaca7b36c11ae5784d";}
    public static String getUserAgent(){return USER_AGENT;};
}
