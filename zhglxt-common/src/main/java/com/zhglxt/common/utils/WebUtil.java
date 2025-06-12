package com.zhglxt.common.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

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
    public static Map paramsToMap(Map<String, String[]> requestParametersMap) {
        Iterator it = requestParametersMap.entrySet().iterator();
        Map result = new HashMap();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            String[] value = (String[]) entry.getValue();
            if (value.length == 1) {
                result.put(entry.getKey(), "'undefined'".equalsIgnoreCase(value[0]) ? null : value[0]);
            } else {
                result.put(entry.getKey(), value);
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
