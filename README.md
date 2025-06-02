# Script default here
```
chain mangle_postrouting_ttl65 { 
	type filter hook postrouting priority 300; policy accept; 
	counter ip ttl set 65 
} 
chain mangle_prerouting_ttl65 { 
	type filter hook prerouting priority 300; policy accept; 
	counter ip ttl set 65 
}
```

# Install
```bash
bash -c "$(wget -qO - 'https://raw.githubusercontent.com/ArifRios1st/fixttlwrt/refs/heads/main/install.sh')"
```
