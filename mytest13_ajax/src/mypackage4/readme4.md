编写上传代码时，遇到java.lang.NoClassDefFoundError: org/apache/commons/io/output/DeferredFileOutputStream异常，百度了好一会，发现原因是假如使用commons-fileupload的版本大于1.0的话则必须引入commons-io.jar
maven示例
        <dependency>
            <groupId>com.liferay.org.apache.commons.fileupload</groupId>
            <artifactId>com.liferay.org.apache.commons.fileupload</artifactId>
            <version>6.2.0.1</version>
        </dependency>
        <dependency>
            <groupId>commons-io</groupId>
            <artifactId>commons-io</artifactId>
            <version>2.5</version>
        </dependency>
1
2
3
4
5
6
7
8
9
10
jar下载地址：http://commons.apache.org/proper/commons-io/download_io.cgi
导入相关文件后问题解决。
--------------------- 
版权声明：本文为CSDN博主「风雨雾凇」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/qq_33850908/article/details/76285296