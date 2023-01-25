#server host object
extends baseNet
class_name host

func _ready():
	target=get_parent().get_node("baseNet")
	is_host=true
	var multiplayerPeer = ENetMultiplayerPeer.new();
	multiplayerPeer.create_server(25565, 2);
	get_tree().get_multiplayer(get_path()).multiplayer_peer = multiplayerPeer;
	print("SERVER: GetTree().GetMultiplayer(GetPath()).IsServer(): ", get_tree().get_multiplayer(get_path()).is_server());
	
	await get_tree().create_timer(2).timeout;
	print("SERVER: GetTree().GetMultiplayer(GetPath()).IsServer(): ", get_tree().get_multiplayer(get_path()).is_server());


