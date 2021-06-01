package tk.curexia.constant;

import java.util.ArrayList;

public class Constants {
    private static ArrayList<String> doctorUris;
    private static ArrayList<String> patientUris;

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
}
