#handles shared functions between the client and host classes for networking
extends Node
class_name baseNet

#used to handle certain features to make sure client doesn't break something
var is_host=false
var target:Node=null
#sends data to and from server
func send(data,method:String='receive'):
	get_tree().get_multiplayer(get_path()).rpc(0,target,method,[data])
#recieves data from client/server
@rpc(any_peer)
func receive(data):
	pass


