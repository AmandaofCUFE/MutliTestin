package controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import entity.TUserEntity;
import model.FileModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import entity.TArticleEntity;
import entity.TReviewEntity;


import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import service.TArticleService;
import service.TCollectionService;
import service.TReviewService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class TArticleController {
    //所有文章信息
    @RequestMapping(value = "/ArticleInfor", method = RequestMethod.GET)
    public JSONArray AticleDetailGet(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        TArticleService articleService = new TArticleService();
        //int proId = 1;
        // int articleId = Integer.parseInt(request.getParameter("articleId"));
        //  System.out.print(articleId + "kankanla");
        // List<TArticleService> list = articleService.cursor("select *from article where article_id =" + articleId);
        List<TArticleService> list = articleService.cursor("select *from article");
        String jsonArray = JSON.toJSONString(list);
        //System.out.println(jsonArray);
        try {
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return JSONArray.parseArray(jsonArray);
    }
    @RequestMapping(value = "/ReviewInfor", method = RequestMethod.GET)
    public JSONArray ReviewInfor(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        TReviewService articleService = new TReviewService();
        //int proId = 1;
        // int articleId = Integer.parseInt(request.getParameter("articleId"));
        //  System.out.print(articleId + "kankanla");
        // List<TArticleService> list = articleService.cursor("select *from article where article_id =" + articleId);
        List<TReviewService> list = articleService.cursor("select *from review");
        String jsonArray = JSON.toJSONString(list);
        //System.out.println(jsonArray);
        try {
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return JSONArray.parseArray(jsonArray);
    }

    //热门文章信息
    @RequestMapping(value = "/hotArticleInfor")
    public void hotAticleDetailGet(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        TArticleService articleService = new TArticleService();
        //int proId = 1;
        int articleId = Integer.parseInt(request.getParameter("articleId"));
        System.out.print(articleId + "kankanla");
        List<TArticleService> list = articleService.cursor("select *from article where article_id =" + articleId);
        String jsonArray = JSON.toJSONString(list);
        ;
        try {
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //收藏文章信息
    @RequestMapping(value = "/collectArticleInfor")
    public JSONObject collectAticleDetailGet(HttpServletRequest request, ModelMap modelMap, HttpServletResponse response) {
        TCollectionService collctionArticleService = new TCollectionService();
        //int proId = 1;
        int articleId = Integer.parseInt(request.getParameter("articleId"));
      //  System.out.print(articleId + "kankanla");
        List<TArticleService> list = collctionArticleService.cursor("select *from collection");
        String jsonArray = JSON.toJSONString(list);
      //  System.out.println(jsonArray);
        try {
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
           printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return JSONObject.parseObject(jsonArray);
    }



    @Autowired
    ServletContext context;

    @RequestMapping(value = "/fileUploadPage", method = RequestMethod.GET)
    public ModelAndView fileUploadPage() {
        FileModel file = new FileModel();
        ModelAndView modelAndView = new ModelAndView("/admin/upload", "command", file);
        return modelAndView;
    }

    @RequestMapping(value = "/fileUploadPage", method = RequestMethod.POST)
    public String fileUpload(HttpServletRequest request, @RequestParam("articleTitle") MultipartFile articleTitle, ModelMap model) throws IOException {
        request.setCharacterEncoding("utf-8");
        String title = request.getParameter("articleTitle");
        String author = request.getParameter("articleAuthor");
        String url = request.getParameter("articleUrl");
        String content = request.getParameter("articleContent");
        System.out.println(title);
        System.out.print(articleTitle.getContentType());
        String uploadPath = context.getRealPath("") + "articleId" + File.separator;
        System.out.print("上传" + uploadPath);
        //Now do something with file...
        FileCopyUtils.copy(articleTitle.getBytes(), new File(uploadPath +"1.jpg"));

        model.addAttribute("fileName", articleTitle.getName());

        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        TUserEntity u= (TUserEntity)request.getSession().getAttribute("loginUser");
       // String proIdd = request.getSession().getAttribute("proId").toString();
       // int proId = Integer.parseInt(proIdd);
        int userId = u.getUserId();
        TArticleService articleService = new TArticleService();
        TArticleEntity article = new TArticleEntity();
        article.setArticleTitle(title);
        article.setArticleAuthor(author);
        article.setArticleUrl(url);
        article.setArticleUploadtime(time);

        articleService.add(article);
        System.out.print("add article");
        return "/admin/uploadArticle.jsp";
    }

    @RequestMapping(value = "/addArticle", method = RequestMethod.POST)
    public JSONObject addReport(HttpServletRequest request, @RequestParam("articleTitle") String articleTitle,@RequestParam("articleAuthor") String articleAuthor,@RequestParam("articleUrl") String articleUrl,ModelMap modelMap, HttpServletResponse response) {
//System.out.println(123);
//        String title = request.getParameter("articleTitle");
//        String author = request.getParameter("articleAuthor");
//        String url = request.getParameter("articleUrl");

        System.out.println(articleAuthor);
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
       // TUserEntity u= (TUserEntity)request.getSession().getAttribute("loginUser");
        //String proIdd = request.getSession().getAttribute("proId").toString();
       // int proId = Integer.parseInt(proIdd);
       // int userId = u.getUserId();
        TArticleService articleService = new TArticleService();
        TArticleEntity article = new TArticleEntity();

        article.setArticleTitle(articleTitle);
        article.setArticleAuthor(articleAuthor);
        article.setArticleUrl(articleUrl);
        article.setArticleUploadtime(time);
       article.setArticleComment("0");
       article.setArticleReadNum(1);
//
article.setArticleType("小说");
        //articleService.add(article);

        System.out.print("add article");
        String sql = "select article_title from testin.article where article_title= '"+articleTitle+"'";
        boolean b = articleService.addArticle(sql,article);
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
        System.out.print(jsonArray);
        return JSON.parseObject(jsonArray);
    }


    @RequestMapping(value = "/addReview", method = RequestMethod.POST)
    public JSONObject addReport(HttpServletRequest request, @RequestParam("articleTitle") String articleTitle,@RequestParam("articleAuthor") String articleAuthor,@RequestParam("articleUrl") String articleUrl,@RequestParam("articleReview") String articleReview, ModelMap modelMap, HttpServletResponse response) {
//System.out.println(123);
//        String title = request.getParameter("articleTitle");
//        String author = request.getParameter("articleAuthor");
//        String url = request.getParameter("articleUrl");

//        System.out.println(articleTitle);
//        System.out.println(articleAuthor);
//        System.out.println(articleUrl);
//        System.out.println(articleReview);
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        // TUserEntity u= (TUserEntity)request.getSession().getAttribute("loginUser");
        //String proIdd = request.getSession().getAttribute("proId").toString();
        // int proId = Integer.parseInt(proIdd);
        // int userId = u.getUserId();
        TReviewEntity review=new TReviewEntity();
        TReviewService reviewService=new TReviewService();

        review.setArticleTitle(articleTitle);
        review.setArticleAuthor(articleAuthor);
        review.setArticleUrl(articleUrl);
        review.setReviewContent(articleReview);
        //reviewService.add(review);

//       JSONObject jsonObject=new JSONObject();
//        jsonObject.put("articleTitle",articleTitle);
//        jsonObject.put("articleAuthor",articleAuthor);
//        jsonObject.put("articleUrl",articleUrl);
//       jsonObject.put("articleReview",articleReview);
//        System.out.println(jsonObject);
//       return jsonObject;
        String sql = "select article_title from testin.article where article_title= '"+articleTitle+"'";
        boolean b = reviewService.addReview(sql,review);
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
        System.out.print(jsonArray);
        return JSON.parseObject(jsonArray);
    }






    @RequestMapping(value = "/uploading", method = RequestMethod.GET)
    public JSONObject uploadAticleDetailGet(HttpServletRequest request, @RequestParam(name="articleTitle") String articleTitle, @RequestParam String articleAuthor, @RequestParam String articleUrl, ModelMap modelMap, HttpServletResponse response) {
       // System.out.println("register");
        TArticleEntity newArticle=new TArticleEntity();
        newArticle.setArticleTitle(articleTitle);
        newArticle.setArticleAuthor(articleAuthor);
        newArticle.setArticleUrl(articleUrl);
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = format.format(date);
        newArticle.setArticleUploadtime(time);

        TArticleService articleService = new TArticleService();
        articleService.add(newArticle);
        List<TArticleService> list = articleService.cursor("select *from article where article_uploadtime="+time);
        String jsonArray = JSON.toJSONString(list);
        System.out.println(jsonArray);
        try {
            response.setCharacterEncoding("utf-8");
            PrintWriter printWriter = response.getWriter();
            printWriter.write(jsonArray);
            printWriter.flush();
            printWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return JSONObject.parseObject(jsonArray);
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest request, @RequestParam("keyword") String keyword,ModelMap modelMap, HttpServletResponse response) {


JSONObject jsonObject=new JSONObject();
jsonObject.put("keyword",keyword);
       // String jsonArraykeyword);
        request.getSession().setAttribute("keyword", jsonObject);
       System.out.println(jsonObject);
//        if(keyword!=null){
//            try {
//               response.sendRedirect("admin/result.jsp");
//              // return
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
        TArticleService articleService = new TArticleService();
        if(keyword!=null){

        List<TArticleEntity> list = articleService.cursor("select * from article where article_title like '%"+keyword+"%'");
        request.getSession().setAttribute("list", list);
        }
        return new ModelAndView("admin/result.jsp");

    }
















}
