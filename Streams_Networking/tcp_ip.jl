# TCP/IP is protocol to send information between devices and Internet
# TCP: transmission control protocol
# IP: Internet protocol

using Sockets

# from client to server
server = listen(8000)
conn = accept(server)
line = readline(conn)

# from server to client
write(conn, "Hello client. How are you?\n")
close(conn)


