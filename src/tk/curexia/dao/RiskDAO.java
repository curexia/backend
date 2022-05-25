package tk.curexia.dao;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class RiskDAO {

    public static String getResult(float age, float dbp, float sbp, float pi, float race, float rbc, float wbc, float sr, float sa, float sc, float si, float sm, float sp, float sex, float tibc, float ts, float bmi, float pp) throws IOException {
        String uri = "https://adimdsearch.herokuapp.com/api/risk?";
        uri += "age=" + age;
        uri += "&dbp=" + dbp;
        uri += "&sbp=" + sbp;
        uri += "&pvi=" + pi;
        uri += "&race=" + race;
        uri += "&rbc=" + rbc;
        uri += "&sr=" + sr;
        uri += "&wbc=" + wbc;
        uri += "&sr=" + sr;
        uri += "&sa=" + sa;
        uri += "&sc=" + sc;
        uri += "&si=" + si;
        uri += "&sm=" + sm;
        uri += "&sp=" + sp;
        uri += "&sex=" + sex;
        uri += "&tibc=" + tibc;
        uri += "&ts=" + ts;
        uri += "&bmi=" + bmi;
        uri += "&pp=" + pp;
        URL url = new URL(uri);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestProperty("Content-Type", "application/json; utf-8");
        StringBuilder resp = new StringBuilder();
        resp.append("");
        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), StandardCharsets.UTF_8))) {
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                resp.append(responseLine.trim());
            }
        }
        JSONObject json = new JSONObject(resp.toString());
        return json.getString("result");
    }
}
