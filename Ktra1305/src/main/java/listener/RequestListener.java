package listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class RequestListener implements ServletRequestListener {
    private static int requestCount = 0;

    public void requestInitialized(ServletRequestEvent sre) {
        requestCount++;
        System.out.println("Đã nhận yêu cầu #" + requestCount);
    }

    public void requestDestroyed(ServletRequestEvent sre) {
        // Không cần xử lý
    }
}
