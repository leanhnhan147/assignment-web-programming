package controllers.assignment10;


import java.io.*;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class ProductIO10 {
    public static void addRecord(Product10 product, String filename) throws IOException {
    File file = new File(filename);
    PrintWriter out = new PrintWriter(
            new FileWriter(file, true));
    out.println(product.getCode() + "|"
            + product.getDescription() + "|"
            + product.getPrice());
    out.close();
}

    public static Product10 getProduct(String code, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in
                    = new BufferedReader(
                    new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String productCode = t.nextToken();
                if (code.equalsIgnoreCase(productCode)) {
                    String description = t.nextToken();
                    double price = Double.parseDouble(t.nextToken());
                    Product10 p = new Product10();
                    p.setCode(code);
                    p.setDescription(description);
                    p.setPrice(price);
                    in.close();
                    return p;
                }
                line = in.readLine();
            }
            in.close();
            return null;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }

    public static ArrayList<Product10> getProducts(String filepath) {
        ArrayList<Product10> products = new ArrayList<Product10>();
        File file = new File(filepath);
        try {
            BufferedReader in
                    = new BufferedReader(
                    new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String code = t.nextToken();
                String description = t.nextToken();
                String priceAsString = t.nextToken();
                double price = Double.parseDouble(priceAsString);
                Product10 p = new Product10();
                p.setCode(code);
                p.setDescription(description);
                p.setPrice(price);
                products.add(p);
                line = in.readLine();
            }
            in.close();
            return products;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
}
