var io = require('socket.io')(8888);
io.on('connection', function(socket){
	console.log("Connected");

	socket.on('createRoom', function(data){
		if(data.length > 0){
			console.log(data);
			socket.join(data);
			socket.Phong = data;
			console.log(socket.adapter.rooms);
		}
	});

	socket.on('sendmessage', function(data){
		console.log(data);
		if(data.check_user){
			io.sockets.in(socket.Phong).emit("server-send", data);
			console.log('gui room');
		}else{
			socket.broadcast.emit("server-send", data);
			console.log('gui all');
		}
		
	});

	socket.on('disconnect', function(socket){
		console.log("Leaved");
	});
});