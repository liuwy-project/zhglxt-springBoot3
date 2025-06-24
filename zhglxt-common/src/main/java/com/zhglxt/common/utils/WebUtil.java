package com.zhglxt.common.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

/**
 * @Description web工具类
 * @Author liuwy
 * @Date 2025/06/11
 */
public class WebUtil {
    /**
     * 将Request请求中的所有参数转换成Map对象
     *
     * @return Map
     */
    public static Map<String, Object> paramsToMap(Map<String, String[]> requestParametersMap) {
        if (requestParametersMap == null || requestParametersMap.isEmpty()) {
            return new HashMap<>();
        }
        Map<String, String[]> mutableParams = new HashMap<>(requestParametersMap);
        Map<String, Object> result = new HashMap<>();
        for (Map.Entry<String, String[]> entry : mutableParams.entrySet()) {
            String key = entry.getKey();
            String[] values = entry.getValue();
            if (values == null || values.length == 0) {
                result.put(key, null);
                continue;
            }
            String firstValue = values[0];
            if ("undefined".equalsIgnoreCase(firstValue) || "'undefined'".equals(firstValue) || firstValue.isEmpty()) {
                result.put(key, null);
            } else if (values.length == 1) {
                result.put(key, firstValue);
            } else {
                result.put(key, values);
            }
        }
        return result;
    }

    /**
     * 获取本应用所在服务器地址
     *
     */
    public static String getServicerAddress() throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        return localHost.getHostAddress();
    }
}
