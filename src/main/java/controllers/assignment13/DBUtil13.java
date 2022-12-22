package controllers.assignment13;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil13 {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("assignment13");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
