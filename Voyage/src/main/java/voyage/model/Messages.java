package voyage.model;

import java.util.HashMap;
import java.util.Map;

public class Messages {
    private String title;
    private Map<String, String> messages;

    public Messages() {
        this.messages = new HashMap<>();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Map<String, String> getMessages() {
        return messages;
    }

    public void put(String key, String value) {
        messages.put(key, value);
    }

    public String get(String key) {
        return messages.get(key);
    }
}