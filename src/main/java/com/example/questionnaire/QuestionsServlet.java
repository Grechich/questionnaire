package com.example.questionnaire;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class QuestionsServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        if ((HashMap<String, Integer>) session.getAttribute("statistic")==null){
            HashMap<String, Integer> statistic = new HashMap<>();
            statistic.put("16-20",0);
            statistic.put("21-30",0);
            statistic.put("30-90",0);
            statistic.put("Ukraine",0);
            statistic.put("other",0);
            session.setAttribute("statistic", statistic);
        }

        HashMap<String, Integer> statistic = (HashMap<String, Integer>) session.getAttribute("statistic");
        response.setContentType("text/html");

        for (String key: statistic.keySet()) {
            if (key.equals(request.getParameter("age")) )
                statistic.put (request.getParameter("age"), (statistic.get(request.getParameter("age"))+1));
            if (key.equals(request.getParameter("country")) )
                statistic.put (request.getParameter("country"), (statistic.get(request.getParameter("country"))+1));
        }

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<form action=\"/index.html\" method=\"POST\">");
        out.println("<h1>" + "Your answer is valid" + "</h1>");
        out.println("<input type=\"submit\"value=\"Home\"/>");
        out.println("</form>");

        out.println("<form action=\"/index.jsp\" method=\"POST\">");
        out.println("<input type=\"submit\" value=\"See results\"/>");
        out.println("</form>");

        out.println("</body></html>");
    }
}