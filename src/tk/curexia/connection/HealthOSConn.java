package tk.curexia.connection;

import org.json.JSONObject;
import tk.curexia.constant.Constants;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class HealthOSConn {

    static String POST_PARAMS = "{\n  " +
            "\"grant_type\": \"client_credentials\",\n  " +
            "\"client_id\": \"" + Constants.healthOSID() + "\",\n  " +
            "\"client_secret\": \"" + Constants.healthOSSecret() + "\",\n  " +
            "\"scope\": \"public read write\"" +
            "\n}";

    public static String getAccessToken() throws IOException {
        String HealthOSAccessToken = "";
        URL url = new URL("https://www.healthos.co/api/v1/oauth/token.json");
        HttpURLConnection http = (HttpURLConnection) url.openConnection();
        http.setRequestMethod("POST"); // PUT is another valid option
        http.setRequestProperty("Content-Type", "application/json");
        http.setRequestProperty("User-Agent", Constants.getUserAgent());
        http.setDoOutput(true);

        try (OutputStream stream = http.getOutputStream()) {
            stream.write(POST_PARAMS.getBytes(StandardCharsets.UTF_8));
        }

        int responseCode = http.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) { //success
            BufferedReader in = new BufferedReader(new InputStreamReader(http.getInputStream(), "utf-8"));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            JSONObject jsonObject = new JSONObject(response.toString());
            HealthOSAccessToken = jsonObject.get("access_token").toString();
        } else {
            throw new IOException("AccessToken not found!");
        }
        return HealthOSAccessToken;
    }
}
