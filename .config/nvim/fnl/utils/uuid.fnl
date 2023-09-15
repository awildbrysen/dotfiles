(module utils.uuid 
  {require-macros [aniseed.macros.autocmds]})

(defn generate_uuid [] 
  (math.randomseed (os.time))
  (local template "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")
  (string.gsub
    template
    "x"
    (fn _ [] 
      (string.format "%x" (math.random 0 0xf)))))
