package com.kangyonggan.archetype.cmscc.biz;

import com.kangyonggan.archetype.cmscc.model.constants.CommonErrors;
import com.kangyonggan.archetype.cmscc.model.dto.request.DemoRequest;
import com.kangyonggan.archetype.cmscc.model.dto.response.CommonResponse;
import com.kangyonggan.archetype.cmscc.service.CmsDemoService;
import lombok.extern.log4j.Log4j2;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author kangyonggan
 * @since 2017/1/18
 */
@Log4j2
public class ServiceAopTest extends AbstractServiceTest {

    @Autowired
    private CmsDemoService cmsccDemoService;

    /**
     * 测试@Valid注解，请求成功
     */
    @Test
    public void testValidWithRespCode0000() {
        DemoRequest request = new DemoRequest();
        request.setName("12345");
        request.setValue(23);

        CommonResponse response = cmsccDemoService.hello(request);
        log.info(response);

        Assert.assertTrue(CommonErrors.SUCCESS.getErrCode().equals(response.getRespCode()));
    }

    /**
     * 测试@Valid注解，请求参数不合法
     */
    @Test
    public void testValidWithRespCode2222() {
        DemoRequest request = new DemoRequest();
        request.setName("111");
        request.setValue(100);

        CommonResponse response = cmsccDemoService.hello(request);
        log.info(response);

        Assert.assertTrue(CommonErrors.BAD_ARGS.getErrCode().equals(response.getRespCode()));
    }

    /**
     * 测试@Param注解，请求成功
     */
    @Test
    public void testParamWithRespCode0000() {
        CommonResponse response = cmsccDemoService.world("1234", 12);
        log.info(response);

        Assert.assertTrue(CommonErrors.SUCCESS.getErrCode().equals(response.getRespCode()));
    }

    /**
     * 测试@Param注解，请求参数不合法
     */
    @Test
    public void testParamWithRespCode2222() {
        CommonResponse response = cmsccDemoService.world("1234", 123);
        log.info(response);

        Assert.assertTrue(CommonErrors.BAD_ARGS.getErrCode().equals(response.getRespCode()));
    }

}
