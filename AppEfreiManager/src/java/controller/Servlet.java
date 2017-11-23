/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sources.StagiaireController;
import sources.UserController;

/**
 *
 * @author PC-Acta
 */

public class Servlet extends HttpServlet {
    private static final String PAGE_PROFIL = "/WEB-INF/profil.jsp";
    private static final String PAGE_INDEX = "/WEB-INF/index.jsp";
    private static final String PAGE_DECONNEXION = "/WEB-INF/deconnexion.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {       
        request.getServletContext().getRequestDispatcher(PAGE_INDEX).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("actionlogin")!=null){
            if(!request.getParameter("login").equals("")|| !request.getParameter("mdp").equals("")){
                UserController usercontroller = new UserController();
                User user = usercontroller.getUser(request.getParameter("login") , request.getParameter("mdp"));
                
                if(user!=null){
                    request.getSession().setAttribute("user", user);
                    StagiaireController stagiaireController = new StagiaireController();
                    List<Stagiaire> stagiaires = stagiaireController.getStagiaires(user.getId());
                    request.setAttribute("stagiaires", stagiaires);
                    request.setAttribute("size", stagiaires.size());

                    request.getRequestDispatcher(PAGE_PROFIL).forward(request, response);                    
               }else{
                    request.getSession().setAttribute("status", "Erreur d'authentification / Utilisateur n'existe pas" );
                    request.getServletContext().getRequestDispatcher(PAGE_INDEX).forward(request,response);
                }
            }else{
                   request.getSession().setAttribute("status", "Veuillez remplir les champs vides" );
                 request.getServletContext().getRequestDispatcher(PAGE_INDEX).forward(request,response);
            }
        }
        
        else if(request.getParameter("deconnexion")!=null){
            request.getSession().invalidate();
            request.getServletContext().getRequestDispatcher(PAGE_DECONNEXION).forward(request,response);
        }
        else{
            
            request.getServletContext().getRequestDispatcher(PAGE_INDEX).forward(request,response);
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
}
