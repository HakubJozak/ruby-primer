users = {
jakub:  {
    user: vals[0],
    uid: vals[2].to_i,
    gid: vals[3].to_i,
    home: vals[5],
},

petr: { ... }
}



jakub = users['jakub'.to_sym]
Fileutils.chdir jakub[:home]
