package controllers.assignment10;

import java.text.NumberFormat;

public class LineItem10 {
    private Product10 product;
    private int quantity;

    public LineItem10() {}

    public void setProduct(Product10 p) {
        product = p;
    }

    public Product10 getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotal() {
        double total = product.getPrice() * quantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
}
