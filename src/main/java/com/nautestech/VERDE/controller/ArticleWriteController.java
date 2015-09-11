package com.nautestech.VERDE.controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nautestech.VERDE.model.Article;

@Controller
@RequestMapping("/article")
public class ArticleWriteController implements InitializingBean {
	private static final Logger logger = LoggerFactory.getLogger(ArticleWriteController.class);

	@Value("file:${uploadPath}")
    private Resource uploadPath;
	
    @RequestMapping(value = "/form")
    public String writeForm(Locale locale) {
    	logger.info(" Spring3 MVC ArticleWriteController ! {}.", locale);
        return "article/ArticleWriteForm";
    }
    
    @RequestMapping(value = "/write", method = RequestMethod.POST)
    public ModelAndView write(@Valid Article article, BindingResult result) {

    	ModelAndView mv = new ModelAndView();

        // Validation ���� �߻��� �Խñ� ���� ���ȭ������ �̵�
        if (result.hasErrors()) {
            // ���� ���
            List<ObjectError> list = result.getAllErrors();
            for (ObjectError e : list) {
            	logger.error(" ObjectError : " + e);
            }

            mv.setViewName("article/ArticleWriteForm");
            mv.addObject("article", article);

            return mv;
        }

        logger.debug(" #### article : " + article);
        
        writeFile(article.getFilename());

        mv.setViewName("article/ArticleViewForm");
        mv.addObject("article", article);

        return mv;
    }
    
    private void writeFile(CommonsMultipartFile[] multipartFiles) {
        OutputStream out = null;

        try {

            for (CommonsMultipartFile multipartFile : multipartFiles) {
                out = new FileOutputStream(uploadPath.getFile().getAbsolutePath() + "/"
                        + multipartFile.getOriginalFilename());
                BufferedInputStream bis = new BufferedInputStream(multipartFile.getInputStream());
                byte[] buffer = new byte[8106];
                int read;

                while ((read = bis.read(buffer)) > 0) {
                    out.write(buffer, 0, read);
                }

                IOUtils.closeQuietly(out);
            }

        } catch (IOException ioe) {
        	logger.error(ioe.toString());
        } finally {
            IOUtils.closeQuietly(out);
        }
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        // tomcat start �� �� uploadPath�� �����Ǿ����� üũ�Ѵ�.
        Assert.notNull(uploadPath, "FileUpload Path must be defined!");
        logger.debug(" ######### uploadPath : " + uploadPath.getFile().getAbsolutePath());
        // ���丮�� �������� �ʴ´ٸ�, ���丮�� �����.
        if (!uploadPath.getFile().exists()) {
            uploadPath.getFile().mkdirs();
        }
    }

}
