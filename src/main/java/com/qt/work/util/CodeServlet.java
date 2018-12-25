package com.qt.work.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CodeServlet
 */
public class CodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private static char[] chs="1234567890".toCharArray();
	private static Random r=new Random();
	private static int NUMBER_OF_CHS;
	private static int IMG_WIDTH;
	private static int IMG_HEIGHT;
	
    public void init(ServletConfig config) throws ServletException {
		String count=config.getInitParameter("count");
		NUMBER_OF_CHS=Integer.parseInt(count);
		String width=config.getInitParameter("width");
		IMG_WIDTH=Integer.parseInt(width);
		String height=config.getInitParameter("height");
		IMG_HEIGHT=Integer.parseInt(height);
    }
	
    public CodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 BufferedImage image=new BufferedImage(IMG_WIDTH, IMG_HEIGHT,BufferedImage.TYPE_3BYTE_BGR);
			Graphics2D g=(Graphics2D)image.getGraphics();
			g.setColor(new Color(200, 200, 255));
			g.fillRect(0, 0, IMG_WIDTH,IMG_HEIGHT);
			g.setFont(new Font("隶书",Font.BOLD,25));
			
			StringBuffer sb=new StringBuffer();
			int index;
			for(int i=0;i<NUMBER_OF_CHS;i++) {
				index=r.nextInt(chs.length);
				g.setColor(new Color(r.nextInt(255), r.nextInt(255),r.nextInt(255)));
				g.drawString(chs[index]+"",15*i+3,18);
				sb.append(chs[index]);
			}
			request.getSession().setAttribute("authCode", sb.toString());
			ImageIO.write(image, "jpg", response.getOutputStream());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
