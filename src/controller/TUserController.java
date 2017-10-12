package controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import service.TUserService;
import entity.TUserEntity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * Created by Wendy Chan on 2017/9/6
 */

@Controller
public class TUserController {
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public void login(HttpServletRequest request, @RequestParam("userEmail") String userEmail, @RequestParam("password") String password, ModelMap modelMap, HttpServletResponse response) {
        TUserEntity user = new TUserEntity();
        user.setUserEmail(userEmail);
        user.setPassword(password);
        TUserService userService = new TUserService();
        String sql = "select * from user where user_email='" + userEmail + "'";
        TUserEntity loginUser = userService.login(sql,user);
        String jsonArray = JSON.toJSONString(loginUser);
        request.getSession().setAttribute("loginUser", loginUser);
            try{
                response.setCharacterEncoding("utf-8");
                PrintWriter printWriter = response.getWriter();
                printWriter.write(jsonArray);
                printWriter.flush();
                printWriter.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }


    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public JSONObject register(HttpServletRequest request, @RequestParam("userName") String userName,@RequestParam("userEmail") String userEmail,@RequestParam("password") String password, ModelMap modelMap, HttpServletResponse response) {
        System.out.println("register");
        TUserEntity user = new TUserEntity();

        user.setPassword(password);
        user.setUserName(userName);
        user.setUserEmail(userEmail);

        user.setUserCredit(0);
        user.setUserComments(0);
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        user.setUserDate(time);
        user.setUserReports(0);

        TUserService userService = new TUserService();
        String sql = "select user_email from user";
        boolean b = userService.register(sql,user);
        System.out.println(b);
        String jsonArray = JSON.toJSONString(b);
        try{
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return JSONObject.parseObject(jsonArray);
    }
    @RequestMapping(value = "/personalData", method = RequestMethod.GET)
    public JSONObject personData(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        TUserEntity user = (TUserEntity)request.getSession().getAttribute("loginUser");

        String jsonArray = JSON.toJSONString(user);
        System.out.println(jsonArray);
        try{
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
       return JSONObject.parseObject(jsonArray);
    }

}