package controllers.assignment6;

import java.io.*;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class UserIO {
    public static boolean add(User6 user6, String filepath) {
        try {
            File file = new File(filepath);
            PrintWriter out = new PrintWriter(
                    new FileWriter(file, true));
            out.println(user6.getEmail() + "|"
                    + user6.getFirstName() + "|"
                    + user6.getLastName());

            out.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User6 getUser(String email, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in = new BufferedReader(
                    new FileReader(file));
            User6 user6 = new User6();
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() < 3) {
                    return new User6("", "", "");
                }
                String token = t.nextToken();
                if (token.equalsIgnoreCase(email)) {
                    String firstName = t.nextToken();
                    String lastName = t.nextToken();
                    user6.setEmail(email);
                    user6.setFirstName(firstName);
                    user6.setLastName(lastName);
                }
                line = in.readLine();
            }
            in.close();
            return user6;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<User6> getUsers(String filepath) {
        try {
            ArrayList<User6> user6s = new ArrayList<User6>();
            BufferedReader in = new BufferedReader(
                    new FileReader(filepath));
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String email = t.nextToken();
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                User6 user6 = new User6(firstName, lastName, email);
                user6s.add(user6);
                line = in.readLine();
            }
            in.close();
            return user6s;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
