package controller;

import model.customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListCustomerServlet", urlPatterns = "/ListCustomer")
public class ListCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<customer> customers = new ArrayList<customer>();

        customers.add(new customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", ""));
        customers.add(new customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", ""));
        customers.add(new customer("Nguyễn Thái Hóa", "1983-08-22", "Nam Định", ""));
        customers.add(new customer("Trần Đăng Khoa", "1983-08-16", "Hà Tây", ""));
        customers.add(new customer("Nguyễn Đình Thi", "1983-08-18", "Hà Nội", ""));

        request.setAttribute("list", customers);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

}
