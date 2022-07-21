import SocketServer
import time, numpy
import threading
import time
class MyUDPHandler(SocketServer.BaseRequestHandler):
    """
    This class works similar to the TCP handler class, except that
    self.request consists of a pair of data and client socket, and since
    there is no connection the client address must be given explicitly
    when sending data back via sendto().
    """

    def handle(self):
        data = self.request[0]
#         print self.client_address
        socket = self.request[1]
#         print "{} wrote:".format(self.client_address[0])
#         print data
        length = len(data)
        self.server.frame += 1
        self.server.bytes += length
        if self.server.frame == 20:
            time_diff = time.time() - self.server.time
            print 'bytes per frame: %d, frame rate: %.1f, bit rate: %.3fMbps' %(length, self.server.frame/time_diff, self.server.bytes*8./time_diff/1e6)
            self.server.time = time.time()
            self.server.frame = 0
            self.server.bytes = 0
        socket.sendto(data, ("localhost", 6566))
#        packet_num = int(length/2000)
#        if numpy.random.random()>0.9:
#            new_data = data[0:4000]+'\x00'*2000+data[6000:-1]
#            socket.sendto(new_data, ("localhost", 6566))
#        else:
#            socket.sendto(data, ("localhost", 6566))
class udp_sever_thread(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        self.setDaemon(1)
        HOST, PORT = "", 6556
        self.mediaserver = SocketServer.UDPServer((HOST, PORT), MyUDPHandler)
        self.mediaserver.max_packet_size = 81920
        self.mediaserver.time = time.time()
        self.mediaserver.frame = 0
        self.mediaserver.bytes = 0
        self.start()
 
 
    def run(self):
        self.mediaserver.serve_forever()

if __name__ == "__main__":
    udp_sever_thread_obj = udp_sever_thread()
    time.sleep(100)
#     udp_sever_thread_obj.server.shutdown()
#     udp_sever_thread_obj.server.server_close()
    if udp_sever_thread_obj.isAlive():
        time.sleep(1)
    
