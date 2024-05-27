package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns= {"/servlet/contact"})
public class Contact extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
      

        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String email = request.getParameter("email");
        String inquiry = request.getParameter("inquiry");
        String[] genres = request.getParameterValues("genre");
        String requestType = request.getParameter("request");

   
        System.out.println("Name: " + name);
        System.out.println("Company: " + company);
        System.out.println("Email: " + email);
        System.out.println("Inquiry: " + inquiry);
        if (genres != null) {
            System.out.println("Selected Genres:");
            for (String genre : genres) {
                System.out.println("- " + genre);
            }
        }
        System.out.println("Request Type: " + requestType);

        HttpSession session = request.getSession();

        if ("No".equals(requestType)) {
            session.setAttribute("name", name);
            session.setAttribute("company", company);
            session.setAttribute("email", email);
            session.setAttribute("inquiry", inquiry);
            session.setAttribute("genre", genres);
            session.setAttribute("requestValue", requestType);

            
            request.getRequestDispatcher("/thanxx2.jsp").forward(request, response);
        } else {
            
            request.setAttribute("name", name);
            request.setAttribute("company", company);
            request.setAttribute("email", email);
            request.setAttribute("inquiry", inquiry);
            request.setAttribute("genre", genres);
            request.setAttribute("requestValue", requestType);

            if ("Yes".equals(requestType)) {
                request.getRequestDispatcher("/thanxx.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/result.jsp").forward(request, response);
            }
        }
    }
}
