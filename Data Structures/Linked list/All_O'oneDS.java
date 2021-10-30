class AllOne {
    private TreeMap<Integer, HashSet<String>> freqMap;
    private HashMap<String, Integer> keysMap;
    
    public AllOne() {
        this.freqMap = new TreeMap<>();
        this.keysMap = new HashMap<>();
    }
    
    public void inc(String key) {
        int freq = keysMap.getOrDefault(key, 0);
        if (freq > 0) {
            HashSet<String> keys = freqMap.get(freq);
            keys.remove(key);
            if (keys.size() <= 0) freqMap.remove(freq);
            else freqMap.put(freq, keys);
        }
        freqMap.computeIfAbsent(freq+1, k -> new HashSet<>()).add(key);
        keysMap.put(key, freq+1);
    }
    
    public void dec(String key) {
        int freq = keysMap.get(key);
        HashSet<String> keys = freqMap.get(freq);
        keys.remove(key);
        if (keys.size() <= 0) freqMap.remove(freq);
        else freqMap.put(freq, keys);
        
        if (freq-1 > 0) {
            freqMap.computeIfAbsent(freq-1, k -> new HashSet<>()).add(key);
        }
        
        if (freq-1 <= 0) keysMap.remove(key);
        else keysMap.put(key, freq-1);
    }
    
    public String getMaxKey() {
        if (freqMap.isEmpty()) return new String();
        
        int maxKey = freqMap.lastKey();
        Iterator<String> iterator = freqMap.get(maxKey).iterator();
        return iterator.next();
    }
    
    public String getMinKey() {
        if (freqMap.isEmpty()) return new String();
        
        int minKey = freqMap.firstKey();
        Iterator<String> iterator = freqMap.get(minKey).iterator();
        return iterator.next();
    }
}
