#server client object
extends baseNet
class_name client
	
func _ready():
	target=get_parent().get_node("baseNet")
	var multiplayerPeer = ENetMultiplayerPeer.new();
	get_tree().get_multiplayer(get_path()).connect('connected_to_server',OnConnectedToServer);
	multiplayerPeer.create_client("localhost", 25565);
	get_tree().get_multiplayer(get_path()).multiplayer_peer = multiplayerPeer;
	print("GetTree().GetMultiplayer(GetPath()).IsServer(): ", get_tree().get_multiplayer(get_path()).is_server());
#prints connected when you successfully link to the server host
func OnConnectedToServer():
	print("Connected!");
	send("testing")
