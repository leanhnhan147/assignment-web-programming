package controllers.assignment9;

import java.io.*;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class UserIO9 {
    public static boolean add(User9 user, String filepath) {
        try {
            File file = new File(filepath);
            PrintWriter out = new PrintWriter(
                    new FileWriter(file, true));
            out.println(user.getEmail() + "|"
                    + user.getFirstName() + "|"
                    + user.getLastName());

            out.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User9 getUser(String email, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in = new BufferedReader(
                    new FileReader(file));
            User9 user = new User9();
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                if (t.countTokens() < 3) {
                    return new User9("", "", "");
                }
                String token = t.nextToken();
                if (token.equalsIgnoreCase(email)) {
                    String firstName = t.nextToken();
                    String lastName = t.nextToken();
                    user.setEmail(email);
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                }
                line = in.readLine();
            }
            in.close();
            return user;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ArrayList<User9> getUsers(String filepath) {
        try {
            ArrayList<User9> users = new ArrayList<User9>();
            BufferedReader in = new BufferedReader(
                    new FileReader(filepath));
            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String email = t.nextToken();
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                User9 user = new User9(firstName, lastName, email);
                users.add(user);
                line = in.readLine();
            }
            in.close();
            return users;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
