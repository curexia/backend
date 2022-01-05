package tk.curexia.constant;

import java.util.ArrayList;

public class Constants {
    private static ArrayList<String> doctorUris;
    private static ArrayList<String> patientUris;
    private final static String USER_AGENT = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";

    static void initUris() {
        doctorUris = new ArrayList<>();
        doctorUris.add("/user/info");

        patientUris = new ArrayList<>();
        patientUris.add("/user/info");
    }

    public static boolean checkUri(String uri, String position) {
        initUris();
        switch (position) {
            case "doctor": {
                if (doctorUris.contains(uri)) {
                    return true;
                } else {
                    return false;
                }
            }
            default: {
                if (patientUris.contains(uri)) {
                    return true;
                } else {
                    return false;
                }
            }
        }
    }

    public static String AppName() {
        return "Curexia!";
    }

    public static String getUserAgent() {
        return USER_AGENT;
    }

    ;

    public static String getApikey() {
        return "83082a779ad241598e3c1a97807293ac";
    }
}
