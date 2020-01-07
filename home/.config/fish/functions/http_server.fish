function http_server
    if type -qf python3
        open http://localhost:8000/
        python3 -m http.server 8000;
    else if type -qf python2
        open http://localhost:8000/
        python2 -m SimpleHTTPServer 8000
    end
end
