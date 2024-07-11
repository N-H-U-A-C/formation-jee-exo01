package dev.cb.servlet;

import dev.cb.model.Personne;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "exo03Servlet", value = "/exo03")
public class Exo03Servlet extends HttpServlet {

    private List<Personne> personnes;

    @Override
    public void init() throws ServletException {
        personnes = new ArrayList<>();
        personnes.add(new Personne("Paco", "Rabanne", 150));
        personnes.add(new Personne("Robert", "Bobby", 25));
        personnes.add(new Personne("Choco", "Bon", 18));
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("personnes", personnes);
        getServletContext().getRequestDispatcher("/exo03.jsp").forward(request, response);
    }
}
