package mypackage4;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * FileName: UpLoad
 * Author: nanzong
 * Date: 2019/8/9
 * Description:
 * History:
 */
//@MultipartConfig      //上传文件时使用的注解
@WebServlet(name = "upFile", urlPatterns = "/upFile")
public class UpLoad extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
            // 如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();
            return;
        }

        String action = request.getParameter("action");
        if ("uploadFile".equals(action)) {
            this.uploadFile(request, response); // 上传文件
        }
    }

    public void uploadFile(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        // 定义指定上传进度的Session变量
        session.setAttribute("progressBar", 0);
        String error = "";
        // 单个上传文件大小的上限
        int maxSize = 50 * 1024 * 1024;
        // 基于磁盘文件项目创建一个工厂对象
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 创建一个新的文件上传对象
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            // 解析上传请求
            List items = upload.parseRequest(request);
            // 枚举方法
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                // 获取FileItem对象
                FileItem item = (FileItem) itr.next();
                // 判断是否为文件域
                if (!item.isFormField()) {
                    // 判断是否选择了文件
                    if (item.getName() != null && !item.getName().equals("")) {
                        // 上传文件的大小
                        long upFileSize = item.getSize();
                        System.out.println("上传文件的大小:" + upFileSize);
                        // 获取文件名
                        String fileName = item.getName();
                        System.out.println("上传文件的文件名:" + fileName);
                        if (upFileSize > maxSize) {
                            error = "您上传的文件太大，请选择不超过50M的文件";
                            break;
                        }
                        // 此时文件暂存在服务器的内存中
                        // 构造临时对象
                        File tempFile = new File(fileName);
                        // String savePath=tempFile.getName();
                        // //返回上传文件在客户端的完整路径名称
                        // request.setAttribute("filename", savePath);
                        // 获取根目录对应的真实物理路径
                        File file = new File(request.getServletContext().getRealPath("/upload"), tempFile.getName());
                        System.out.println("路径=====》》》  " + request.getServletContext().getRealPath("/upload"));
                        System.out.println("路径=====》》》  " + file.getPath());

                        InputStream is = item.getInputStream();
                        // 定义缓冲区的大小
                        int buffer = 1024;
                        int length = 0;
                        byte[] b = new byte[buffer];
                        double percent = 0;
                        FileOutputStream fos = new FileOutputStream(file);
                        while ((length = is.read(b)) != -1) {
                            // 计算上传文件的百分比
                            percent += length / (double) upFileSize * 100D;
                            // 向文件输出流写读取的数据
                            fos.write(b, 0, length);
                            // 将上传百分比保存到Session中
                            session.setAttribute("progressBar", Math
                                    .round(percent));
                        }
                        fos.close();
                        // 线程休眠1秒
                        Thread.sleep(1000);
                    } else {
                        error = "没有选择上传文件！";
                    }

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            error = "上传文件出现错误：" + e.getMessage();
        }

        if (!"".equals(error)) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("index4_error.jsp")
                    .forward(request, response);
        } else {
            request.setAttribute("result", "文件上传成功！");
            request.getRequestDispatcher("index4_upFile_deal.jsp").forward(request,
                    response);
        }
    }

    public void modifyFileName(String name, String alias) {//传入文件名,传入新名字
        //web程序,获取项目根路径
        String realPath = this.getServletContext().getRealPath("/date");
        String path = realPath + "\\" + name;
        File file = new File(path);
        String fileName = file.getName();
        String rootPath = file.getParent();
        fileName = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").format(new Date()) + alias + fileName.substring(fileName.indexOf("."));
        File newFile = new File(rootPath + "\\" + fileName);
        file.renameTo(newFile);
    }
}
